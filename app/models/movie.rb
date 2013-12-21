class Movie < ActiveRecord::Base

  has_many :roles
  belongs_to :director
end
