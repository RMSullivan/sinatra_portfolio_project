class User < ActiveRecord::Base
  has_many :autos
  has_secure_password


end
