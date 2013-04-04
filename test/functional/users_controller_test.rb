require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  include Devise::TestHelpers

  setup do
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  test "should get new" do    
    get :new
      assert_response :success
    end

 test "a user type is created when a user signs up" do    
    assert_equal 0, User.count
    post :create, {:user => {:email => "test@test.com", :password => "password", :role_type => "employer"}}
    assert User.first.role_type == "employer"
  end
end


