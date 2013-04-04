require 'test_helper'


class UserFactory

  def self.applicant
    # User.create!(:email => '', :password => "")
    user = User.new
    user.email = "test@test.com"
    user.password = "password"
    user.role_type = "applicant"
    user
  end

    def self.employer
    # User.create!(:email => '', :password => "")
    user = User.new
    user.email = "test@test.com"
    user.password = "password"
    user.role_type = "employer"
    user
  end

end