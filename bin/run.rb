require_relative '../config/environment'
require "tty-prompt"

puts "HELLO WORLD"

prompt = TTY::Prompt.new
puts "Welcome to the D&D Character Creation List!"
user_name = prompt.ask("What would you like to be called?")
user_name = Player.new(name = user_name)

puts "Hello #{user_name}!"                                      #Inputting player name & creating player instance

character_classes = Feature.all.map {|feature| feature.class_name}

character_name = prompt.ask("Please enter your character's name: ")   #Create character & creating character_sheet instance
character_race = prompt.ask("Please enter your character's race: ")
selected_character_class = prompt.select("Please select your character class", character_classes)

if character_class == "Fighter"

elsif character_class == "Mage"

elsif character_class == "Hunter"

elsif character_class == "Rogue"

end

new_character = Charactersheet.new(name = character_name, race = character_race, features_id = selected_character_class, player_id = user_name.id)




