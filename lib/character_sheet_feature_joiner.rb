class CharacterSheetFeatureJoiner < ActiveRecord::Base
    belongs_to :character_sheet
    belongs_to :feature
end