class Balance < ApplicationRecord
  validates :name, :balance, presence: true 
end
