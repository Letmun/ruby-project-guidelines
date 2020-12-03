Player.destroy_all
Feature.destroy_all
CharacterSheet.destroy_all
CharacterSheetFeatureJoiner.destroy_all


duncan = Player.create(name: "Duncan Stark")

fighter = Feature.create(class_name: "Fighter", ability: "Sword")
mage = Feature.create(class_name: "Mage", ability: "Staff")
rogue = Feature.create(class_name: "Rogue", ability: "Daggers")
hunter = Feature.create(class_name: "Hunter", ability: "Crossbow")


sheet1 = CharacterSheet.create(name: "Steve", race: "Dwarf", feature_id: fighter.id, player_id: duncan.id)

joiner1 = CharacterSheetFeatureJoiner.create(character_sheets_id: sheet1.id, features_id: fighter.id)





puts "Hi"