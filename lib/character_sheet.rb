class CharacterSheet < ActiveRecord::Base
    belongs_to :player  
    has_many :feature, through: :character_sheet_feature_joiner
 end
 