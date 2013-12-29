class Director < ActiveRecord::Base
  include Age

  validates_uniqueness_of :name
  validates_presence_of :name

  has_many :movies, :dependent => :destroy
end
