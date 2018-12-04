class Sitter < ApplicationRecord
  has_many :owner_sitters
  has_many :owners, through: :owner_sitters

  validates :name, length: { in: 2..20}
  validates :zipcode, length: { is: 5}
  validates :phone, length: { is: 10}
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /@/
  validates :bio, presence: true

  has_secure_password
end
