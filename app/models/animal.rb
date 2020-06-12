class Animal < ApplicationRecord
  validates :kind, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :breed, presence: true

  def self.search(search)
    return Animal.all unless search
    # Animal.where('kind WHERE(?)', "%#{search}%")
    Animal.where(kind: search.downcase)
  end

  scope :new_faces, -> {order(created_at: :desc).limit(3)}
  
end