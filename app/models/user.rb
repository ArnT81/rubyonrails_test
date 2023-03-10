class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: {with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/, message: "Must be a valid email address"}
end
