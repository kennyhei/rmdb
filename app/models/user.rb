class User < ActiveRecord::Base

  has_secure_password

  validates_uniqueness_of :username
  validates_length_of :password, :minimum => 4
  validates_length_of :username, :minimum => 3, :maximum => 15

  validates :password, :format => { :with => /(?=.*[a-zA-Z])(?=.*[0-9])/,
                                    :message => "must contain numbers and letters"}
end
