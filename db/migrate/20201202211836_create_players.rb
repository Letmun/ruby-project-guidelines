class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |p|
      p.string :name
    end
  end
end
