class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |f|
      f.string :class_name
      f.string :ability
    end 
  end
end
