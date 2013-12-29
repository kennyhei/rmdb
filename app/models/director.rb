class Director < ActiveRecord::Base
  include Age

  validates_presence_of :name

  has_many :movies, :dependent => :destroy
end
