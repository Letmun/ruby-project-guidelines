require_relative '../config/environment'
require "tty-prompt"

class AppCLI

    def run 
        welcome
    end

    def welcome
        prompt = TTY::Prompt.new
        puts "Welcome to the D&D Character Creation List!"
        puts "What would you like to be called?"
        user_name = gets.chomp
        @player_name = Player.create(name: user_name) 
        puts "Hello #{@player_name.name}!"
        create_character
    end

    def create_character
        prompt = TTY::Prompt.new
        puts "What is your character's name?"
        character_name = gets.chomp
        puts "Please select your race: 1) Dragonborn   2) Elf   3) Dwarf   4) Gnome   5) Half-Elf   6) Halfling   7) Half-Orc   8) Human   9) Tielfing"
        character_race = gets.chomp
        # all_races = CharacterSheet.all.map {|race| @character_sheet.race}
        # character_race = prompt.enum_select("Please select your race:", all_races)
        @character_sheet = CharacterSheet.create(name: character_name, race: character_race, player_id: @player_name.id)        #Created character sheet instance
        
        puts "Hello #{@character_sheet.name}!"
        create_feature

    end

    def create_feature
        puts "Please select your class: 1) Fighter   2) Rogue   3) Mage    4) Hunter"
        character_class = gets.chomp
        puts "Please select your ability: "
        character_ability = gets.chomp

        @feature = Feature.new(class_name: character_class, ability: character_ability)
        @joiner = CharacterSheetFeatureJoiner.new(character_sheets_id: @character_sheet.id, features_id: @feature.id)
    end






                                     #Inputting player name & creating player instance

# character_classes = Feature.all.map {|feature| feature.class_name}

# character_name = prompt.ask("Please enter your character's name: ")   #Create character & creating character_sheet instance
# character_race = prompt.ask("Please enter your character's race: ")
# selected_character_class = prompt.select("Please select your character class", character_classes)

# if character_class == "Fighter"

# elsif character_class == "Mage"

# elsif character_class == "Hunter"

# elsif character_class == "Rogue"

end

# new_character = Charactersheet.new(name = character_name, race = character_race, features_id = selected_character_class, player_id = user_name.id)





AppCLI.new.run



