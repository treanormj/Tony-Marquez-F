class Reflection < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :relationship, presence: true, length: { minimum: 3 }
end
