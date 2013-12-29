class Movie < ActiveRecord::Base

  validates_uniqueness_of :name
  validates_numericality_of :year, { :greater_than_or_equal_to => 1900,
                                     :only_integer => true}

  validates_numericality_of :runtime, { :greater_than_or_equal_to => 10,
                                        :less_than_or_equal_to => 600,
                                        :only_integer => true }

  validates_length_of :name, :minimum => 2, :maximum => 100

  validate :year_cannot_be_greater_than_current_year

  # When movie is deleted, roles of the movie are also deleted
  has_many :roles, :dependent => :destroy
  belongs_to :director

  has_many :actors, :through => :roles

  def year_cannot_be_greater_than_current_year
    if year > Time.now.year
      errors.add(:year, "cannot be greater than current year")
    end
  end
end
