# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create({name: "Art", image: "red"})
Category.create({name: "Film", image: "ming"})
Category.create({name: "Sculpture", image: "black"})
Category.create({name: "Sewing", image: "orange"})
Category.create({name: "Photography", image: "purple"})
Category.create({name: "Video", image: "cream"})