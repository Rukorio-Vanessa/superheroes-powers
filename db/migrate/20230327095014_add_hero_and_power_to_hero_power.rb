class AddHeroAndPowerToHeroPower < ActiveRecord::Migration[7.0]
  def change
    add_reference :hero_powers, :hero, null: false, foreign_key: true
    add_reference :hero_powers, :power, null: false, foreign_key: true
  end
end
