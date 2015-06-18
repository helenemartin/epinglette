class PopulateCategories < ActiveRecord::Migration
  def change
    Category.create({name: "Art", image: "red"})
    Category.create({name: "Film", image: "red"})
    Category.create({name: "Sculpture", image: "red"})
    Category.create({name: "Sewing", image: "red"})
    Category.create({name: "Photography", image: "red"})
    Category.create({name: "Video", image: "red"})
  end
end
