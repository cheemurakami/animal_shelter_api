class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :kind, :string
      t.column :name, :string
      t.column :age, :integer
      t.column :breed, :string
    end
  end
end
