class User < ApplicationRecord
  include UsersHelper
  before_save {email.downcase!}
  validates :name, presence: true, length: {maximum: 51}
  validates :email, format: {with: Settings.VALID_EMAIL_REGEX, message: "Only map this regex"},
    uniqueness: {case_sensitive: false}
  has_secure_password
end
