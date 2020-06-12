class Animal < ApplicationRecord
  validates :kind, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :breed, presence: true
end