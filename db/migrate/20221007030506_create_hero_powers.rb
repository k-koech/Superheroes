class CreateHeroPowers < ActiveRecord::Migration[6.1]
  def change
    create_table :hero_powers do |t|
      t.integer :power_id
      t.integer :hero_id
      t.string :strength

      t.timestamps
    end
  end
end
