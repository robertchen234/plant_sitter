class Plant < ApplicationRecord
  has_many :owner_plants
  has_many :owners, through: :owner_plants
end
