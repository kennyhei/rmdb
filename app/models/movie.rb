class Movie < ActiveRecord::Base

  # When movie is deleted, roles of the movie are also deleted
  has_many :roles, :dependent => :destroy
  belongs_to :director
end
