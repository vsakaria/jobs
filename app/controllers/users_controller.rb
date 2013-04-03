class UsersController < Devise::RegistrationsController

  def new
    super
  end

  def create
    User.transaction do
      super
      after_sign_in_path(resource)
    end
  end

  private

  def after_sign_in_path(resource)
    debugger
    @user = User.new(params[:resource])
    if @user.role_type == "employer"
      role = Employer.create

    elsif params[:role_type] == "applicant"
      role = Applicant.create
    else
      render :new
      return
    end 

    @user.role = role
    if @user.save
      flash[:notice] = "Signed up!"
      redirect_to @user
    end
  end


end
