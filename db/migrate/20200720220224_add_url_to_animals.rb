class AddUrlToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column(:animals, :imgUrl, :string)
  end
end
