class Skill < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?



  attribute :name, :string
  attribute :description, :string
  attribute :category, :string
  attribute :price, :float
  attribute :address, :string
end
