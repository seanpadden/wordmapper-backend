# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do 
#   Word.create(word_name: "desert", definition: "affected with disease or ill health : ailing", etymology: "Middle English, from Anglo-French, from Late Latin {it}desertum{/it}, from Latin, neuter {it}desertus{/it}, past participle of {it}deserere{/it} to desert, from {it}de-{/it} {it}serere{/it} to join together {ma}{mat|series|}{/ma}")
# end 

Language.destroy_all 
ActiveRecord::Base.connection.reset_pk_sequence!('languages')

Location.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('locations')

# en = Language.create(name: "English", country: "England")
# Location.create(lat: 54.0000, lng: -2.0000, language: en)

obj = {
  English: {lat: 54.0000, lng: -2.0000},
  "English,": {lat: 54.0000, lng: -2.0000},
  "Anglo-French": {lat: 46.0000, lng: 2.0000},
  "Anglo-French,": {lat: 46.0000, lng: 2.0000},
  French: {lat: 46.0000, lng: 2.0000},
  "French,": {lat: 46.0000, lng: 2.0000},
  German: {lat: 51.1657, lng: 10.4515},
  "German,": {lat: 51.1657, lng: 10.4515},
  Germanic: {lat: 51.1657, lng: 10.4515},
  "Germanic,": {lat: 51.1657, lng: 10.4515},
  Goth: {lat: 51.1657, lng: 10.4515},
  "Goth,": {lat: 51.1657, lng: 10.4515},
  Gothic: {lat: 51.1657, lng: 10.4515},
  "Gothic,": {lat: 51.1657, lng: 10.4515},
  Dutch: {lat: 52.1326, lng: 5.2913},
  "Dutch,": {lat: 52.1326, lng: 5.2913},
  Greek: {lat: 37.9838, lng: 23.7275},
  "Greek,": {lat: 37.9838, lng: 23.7275},
  Latin: {lat: 41.8719, lng: 12.5674},
  "Latin,": {lat: 41.8719, lng: 12.5674},
  Italian: {lat: 41.8719, lng: 12.5674},
  "Italian,": {lat: 41.8719, lng: 12.5674},
  Spanish: {lat: 40.4637, lng: 3.7492},
  "Spanish,": {lat: 40.4637, lng: 3.7492},
  Castilian: {lat: 40.4637, lng: 3.7492},
  "Castilian,": {lat: 40.4637, lng: 3.7492},
  Egyptian: {lat: 26.8206, lng: 30.8025},
  "Egyptian,": {lat: 26.8206, lng: 30.8025},
  Nordic: {lat: 60.4720, lng: 8.4689},
  "Nordic,": {lat: 60.4720, lng: 8.4689},
  Norwegian: {lat: 60.4720, lng: 8.4689},
  "Norwegian,": {lat: 60.4720, lng: 8.4689},
  Norse: {lat: 60.4720, lng: 8.4689},
  "Norse,": {lat: 60.4720, lng: 8.4689},
  Arabic: {lat: 23.8859, lng: 45.0792},
  "Arabic,": {lat: 23.8859, lng: 45.0792},
  Gaelic: {lat: 53.4129, lng: 8.2439},
  'Gaelic,': {lat: 53.4129, lng: 8.2439},
  Russian: {lat: 61.5240, lng: 105.3188},
  "Russian,": {lat: 61.5240, lng: 105.3188},
  Chinese: {lat: 35.8617, lng: 104.1954},
  "Chinese,": {lat: 35.8617, lng: 104.1954},
  Sanskrit: {lat: 35.8617, lng: 104.1954}, 
  "Sanskrit,": {lat: 35.8617, lng: 104.1954}, 
  Hindi: {lat: 20.5937, lng: 78.9629},
  "Hindi,": {lat: 20.5937, lng: 78.9629},
  "Old Church Slavonic": {lat: 48.6690, lng: 19.6990},
  "Old Church Slavonic,": {lat: 48.6690, lng: 19.6990},
  Slavonic: {lat: 48.6690, lng: 19.6990},
  Hebrew: {lat: 31.7683, lng: 35.2137},
  "Hebrew,": {lat: 31.7683, lng: 35.2137},
  Yiddish: {lat: 51.1657, lng: 10.4515},
  "Yiddish,": {lat: 51.1657, lng: 10.4515},
  Lithuanian: {lat: 55.1694, lng: 23.8813},
  "Lithuanian,": {lat: 55.1694, lng: 23.8813},
  Turkish: {lat: 38.9637, lng: 35.2433},
  "Turkish,": {lat: 38.9637, lng: 35.2433},
  Algonquian: {lat: 45.5017, lng: -73.5673},
  'Algonquian,': {lat: 45.5017, lng: -73.5673},
  Nahuatl: {lat: 20.683056, lng: -88.568611},
  "Nahuatl,": {lat: 20.683056, lng: -88.568611},
  Louisiana: {lat: 29.9511, lng: -90.0715},
  Haitian: {lat: 18.9712, lng: -72.2852},
  Bantu: {lat: 7.3775, lng: 3.9470},
  Kimbundu: {lat: -11.2027, lng: 17.8739}
}

keys = obj.keys
keys.map do |el| 
  newLang = Language.create(name: el.to_s, country: "")
  Location.create(lat: obj[el][:lat], lng: obj[el][:lng], language: newLang)  
end 

puts "get seeded"