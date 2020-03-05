class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.string :name
      t.decimal :price
      t.integer :hours
      t.text :notes

      t.timestamps
    end
  end
end
