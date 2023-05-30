class Skill < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  attribute :name, :string
  attribute :description, :string
  attribute :category, :string
  attribute :price, :float
  attribute :address, :string
end
