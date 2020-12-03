class CreateCharacterSheetFeatureJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :character_sheet_feature_joiners do |t|
      t.integer :character_sheets_id
      t.integer :features_id
    end
  end
end
