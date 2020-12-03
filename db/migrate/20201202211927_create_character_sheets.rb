class CreateCharacterSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :character_sheets do |c|
      c.string :name
      c.string :race
      c.integer :feature_id
      c.integer :player_id
    end 
  end
end
