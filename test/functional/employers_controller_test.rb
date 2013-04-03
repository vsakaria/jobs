 require 'test_helper'

class EmployersControllerTest < ActionController::TestCase
  setup do
    @employer = employers(:one)
  end

  test "employer can sign up" do
    assert_equal 0, Employer.count

    post :create, {:employer => {:email => "test@test.com", :location => "London", :logo => "/logo.gif", :name => "Makers Academy", :url => "www.makersacademy.com"}}
    
    assert_equal 1, Employer.count

    assert_equal "test@test.com", Employer.first.email
  end

  

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:employers)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create employer" do
  #   assert_difference('Employer.count') do
  #     post :create, employer: { email: @employer.email, location: @employer.location, logo: @employer.logo, name: @employer.name, url: @employer.url }
  #   end

  #   assert_redirected_to employer_path(assigns(:employer))
  # end

  # test "should show employer" do
  #   get :show, id: @employer
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @employer
  #   assert_response :success
  # end

  # test "should update employer" do
  #   put :update, id: @employer, employer: { email: @employer.email, location: @employer.location, logo: @employer.logo, name: @employer.name, url: @employer.url }
  #   assert_redirected_to employer_path(assigns(:employer))
  # end

  # test "should destroy employer" do
  #   assert_difference('Employer.count', -1) do
  #     delete :destroy, id: @employer
  #   end

  #   assert_redirected_to employers_path
  # end
end
