class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.boolean :attendance, null: false, default: true
      t.integer :generation
      t.text :note

      t.timestamps
    end
  end
end
