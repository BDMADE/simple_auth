class User < ActiveRecord::Base
  belongs_to :role
  has_secure_password
end
