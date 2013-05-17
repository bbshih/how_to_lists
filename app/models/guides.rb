class Guide < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :actions, :dependent => :delete_all
end
