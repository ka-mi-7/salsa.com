class Team < ApplicationRecord
  mount_uploder :image, ImegeUploder
  
  has_secure_password
  has_many :requests
  has_many :recruits
end
