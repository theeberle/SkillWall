class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.string :category
      t.float :price
      t.string :address

      t.timestamps
    end
  end
end
