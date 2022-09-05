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

#crear wines_strain
#crear oenologist
nation_array = ["Chile", "Francia","Italia","España"]
age_array = [20,30,40,50,60]
30.times do |x|
    Oenologist.create!(name: "Enologo #{x+1}", nation: nation_array.sample, age: age_array.sample + x)
    puts "enologo nro #{x+1}"
end

#wine_oenologist
wines = Wine.all
oenologists = Oenologist.all
notes = [1,2,3,4,5,6,7,8,9,10]
comment_array = ["Buen vino, tiene un balanceo adecuado" , "Es un buen vino que destaca por sus taninos", "Es un excelente vino, que invita a descubrir sus capas"]
20.times do |x|
    wine = wines.sample
    oenologist = oenologists.sample
    WineOenologist.create!(wine_id: wine.id, oenologist_id: oenologist.id, nota: notes.sample, comment: comment_array.sample)
end


