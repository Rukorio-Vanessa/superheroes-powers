class CreatePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :powers do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
