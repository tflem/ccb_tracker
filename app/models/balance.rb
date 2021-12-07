class Balance < ApplicationRecord
  has_many :notes, dependent: :delete_all
  validates :name, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.01 }
end
