class CreateHeroPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_powers do |t|
      t.integer :strength, null: false, default: 0

      t.timestamps
    end
  end
end
