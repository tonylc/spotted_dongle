class InterestedEmail < ActiveRecord::Base
  EMAIL_REGEX = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  validates :email, :presence => true, :uniqueness => true
  validates_format_of :email, :with => EMAIL_REGEX
end
