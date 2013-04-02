class Job < ActiveRecord::Base
  attr_accessible :category, :description, :how_to_apply, :location, :position_type, :title
end
