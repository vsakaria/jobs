require 'test_helper'
require "factories/user_factory"

require "test/unit"
require "mocha/setup"

class JobsControllerTest < ActionController::TestCase

  include Devise::TestHelpers

  setup do
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end
 

  test "applicant cannot create a job " do

    assert_equal 0, Job.count
    log_in_applicant
    post :create, :job => {:category => "Software", :description => "Office shit wanted", :how_to_apply => "A few drinks and a kiss", :location => "Soho Cellar", :position_type => "Dogstyle", :title => "Software Geek" }
    assert_equal 0, Job.count
    assert_redirected_to root_url
  end
  
  def log_in_applicant
    JobsController.any_instance.stubs(:current_user).returns( UserFactory.applicant)
  end

end
