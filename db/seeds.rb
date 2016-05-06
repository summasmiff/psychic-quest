# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

psychics = Psychic.create(
  [{ name: "Crondess the Magnificent", color: "infra-blue" },
   { name: "Marquise de Moonsphere", color: "hyper purple" },
   { name: "Becky", color: "the beigest" }])

beverages = Beverage.create(
  [{name: "A Refreshing Beverage", flavor: "blue", secondary_flavor: "grape"},
   {name: "Magick Juice", flavor: "devils lettuce", secondary_flavor: "funky mint"},
   {name: "Bigger Gulp", flavor: "red", secondary_flavor: "arnj"}])

familiars = Familiar.create(
  [{name: "Fluffums", species: "basic cat", personality: "angsty"},
   {name: "Filbert", species: "raccoon", personality: "shy"},
   {name: "Reynauld", species: "polar bear" , personality: "verklempt"}])
