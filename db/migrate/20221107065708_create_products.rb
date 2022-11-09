class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :url
      t.text :description
      t.float :price
      t.integer :mobile_number
      t.string :size

      t.timestamps
    end
  end
end
