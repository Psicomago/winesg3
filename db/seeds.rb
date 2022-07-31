# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# crear strains
reds = ['Cabernet Sauvignon', 'Cabernet Franc', 'Syrah', 'Tannat', 'Malbec', 'Bonarda', 'Petit Verdot', 'Merlot', 'Carmenere', 'Sangiovese', 'Tempranillo', 'Marselan', 'Pinot Noir', 'Carignan', 'Cinsaunt']
whites = ['Chardonnay', 'Sauvignon Blanc', 'Semillón', 'Torrontés', 'Pedro Ximenéz', 'Riesling', 'Viognier', 'Chenin Blanc']
roses = ['Pinot Gris', 'Gewürztraminer', 'Canarí']
strains = [reds,whites,roses]
strains.each do |type|
    typestrain = type
    typestrain.each do |strain|
        Strain.create!(name: strain)
    end
end
#crear wines
strains = Strain.all
strains.each do |strain|
    wine = Wine.create!(name: strain.name)
    StrainWine.create(strain_id: strain.id, wine_id: wine.id, percentage: 100)
end