class ApplicationController < ActionController::Base
  protect_from_forgery

  def blah
    self
  end
  
end
