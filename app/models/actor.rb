class Actor < ActiveRecord::Base
  include Age

  validates_presence_of :name

  has_many :roles
  has_many :movies, :through => :roles
end
