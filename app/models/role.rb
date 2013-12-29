class Role < ActiveRecord::Base

  validates_presence_of :name

  belongs_to :movie
  belongs_to :actor
end
