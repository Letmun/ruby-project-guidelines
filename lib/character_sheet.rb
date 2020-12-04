class CharacterSheet < ActiveRecord::Base
    belongs_to :player  
    has_many :feature, through: :character_sheet_feature_joiner

    def race
        race = ["Dragonborn", "Elf", "Dwarf", "Gnome", "Half-Elf", "Halfling", "Half-Orc", "Human", "Tielfing"] 
        all_races = self.all.map {|race| @character_sheet.race}
        character_race = prompt.enum_select("Please select your race:", all_races)
    end
 end
 