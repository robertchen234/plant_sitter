class Owner < ApplicationRecord
  has_many :owner_sitters
  has_many :sitters, through: :owner_sitters

  has_many :owner_plants
  has_many :plants, through: :owner_plants

  validates :name, length: { in: 2..20}
  validates :zipcode, length: { is: 5}
  validates :phone, length: { is: 10}
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /@/

  has_secure_password
end
