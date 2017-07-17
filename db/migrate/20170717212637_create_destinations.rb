class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.integer :price
      t.string :name
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
