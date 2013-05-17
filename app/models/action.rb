class Action < ActiveRecord::Base
  belongs_to :guide
  attr_accessible :description
  validates :description, :presence => true
end
