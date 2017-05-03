class User < ApplicationRecord
  before_save {email.downcase!}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: {maximum: 51}
  validates :email, format: {with: VALID_EMAIL_REGEX, message: "Only map this regex"},
    uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 3}
  validates :password_confirmation, presence: true
  has_secure_password
end
