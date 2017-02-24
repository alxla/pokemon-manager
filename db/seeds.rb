# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.delete_all
Pokemon.delete_all


# $$$$$$$$$$$$$ TYPES $$$$$$$$$$$

type = Type.new(name: 'Feu')
type.remote_pic_url = "http://res.cloudinary.com/alxla/image/upload/v1487946847/fire_tucjnm.png"
type.save

type = Type.new(name: 'Eau')
type.remote_pic_url = "http://res.cloudinary.com/alxla/image/upload/v1487946847/water_t00wh0.png"
type.save

type = Type.new(name: 'Electrique')
type.remote_pic_url = "http://res.cloudinary.com/alxla/image/upload/v1487946847/electric_uxwohq.png"
type.save

type = Type.new(name: 'Vol')
type.remote_pic_url = "http://res.cloudinary.com/alxla/image/upload/v1487946847/Flying_evad0v.png"
type.save

type = Type.new(name: 'Fee')
type.remote_pic_url = "http://res.cloudinary.com/alxla/image/upload/v1487950135/Fee_axraui.png"
type.save

type = Type.new(name: 'Plante')
type.remote_pic_url = "http://res.cloudinary.com/alxla/image/upload/v1487950130/Plante_upr84t.png"
type.save

type = Type.new(name: 'Poison')
type.remote_pic_url = "http://res.cloudinary.com/alxla/image/upload/v1487954943/Poison_rg9bwm.png"
type.save

# $$$$$$$$$$$$$ POKEMON $$$$$$$$$$$


pokemon = Pokemon.new(name: 'Pikachu', height: 0.4, weight: 6)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487945264/Pikachu.png"
pokemon.save

pokemon = Pokemon.new(name: 'Reichu', height: 0.4, weight: 6)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487955996/Raichu_sdmeqf.png"
pokemon.save

pokemon = Pokemon.new(name: 'Carapuce', height: 0.5, weight: 9)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487945426/Carapuce_ir2egu.png"
pokemon.save

pokemon = Pokemon.new(name: 'Carabaffe', height: 0.5, weight: 9)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487955891/Carabaffe_e8bi79.png"
pokemon.save

pokemon = Pokemon.new(name: 'Tortank', height: 0.5, weight: 9)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487955888/Tortank_ej6k7v.png"
pokemon.save

pokemon = Pokemon.new(name: 'Salameche', height: 0.6, weight: 8.5)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487945283/Salameche.png"
pokemon.save

pokemon = Pokemon.new(name: 'Reptincel', height: 0.6, weight: 8.5)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487954800/Reptincel_gmpoku.png"
pokemon.save

pokemon = Pokemon.new(name: 'Dracofeu', height: 0.6, weight: 8.5)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487954797/Dracofeu_gjp9bq.png"
pokemon.save

pokemon = Pokemon.new(name: 'Bulbizarre', height: 0.6, weight: 7)
pokemon.remote_bgpic_url = "https://res.cloudinary.com/alxla/image/upload/v1487944984/Bulbizarre.png"
pokemon.save

pokemon = Pokemon.new(name: 'Herbizarre', height: 0.6, weight: 7)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487954662/Herbizarre_mh2v4l.png"
pokemon.save

pokemon = Pokemon.new(name: 'Florizarre', height: 0.6, weight: 7)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487954659/Florizarre_ganiov.png"
pokemon.save

pokemon = Pokemon.new(name: 'Melofee', height: 0.6, weight: 7.5)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487945481/Melofee_mulbjy.png"
pokemon.save

pokemon = Pokemon.new(name: 'Roucool', height: 0.3, weight: 1.8)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487945484/Roucool_n5ghjc.png"
pokemon.save

pokemon = Pokemon.new(name: 'Roucoups', height: 0.3, weight: 1.8)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487956127/Roucoups_a2fqyk.png"
pokemon.save

pokemon = Pokemon.new(name: 'Roucarnage', height: 0.3, weight: 1.8)
pokemon.remote_bgpic_url = "http://res.cloudinary.com/alxla/image/upload/v1487956124/Roucarnage_qmuizt.png"
pokemon.save
# $$$$$$$$$$$$$ RELATION BETWEEN POKEMONS AND TYPES $$$$$$$$$$$

poketype = Type.find_by name:'Vol'
pokemon = Pokemon.find_by name:'Roucool'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Vol'
pokemon = Pokemon.find_by name:'Roucoups'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Vol'
pokemon = Pokemon.find_by name:'Roucarnage'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Electrique'
pokemon = Pokemon.find_by name:'Pikachu'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Electrique'
pokemon = Pokemon.find_by name:'Reichu'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Feu'
pokemon = Pokemon.find_by name:'Salameche'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Feu'
pokemon = Pokemon.find_by name:'Reptincel'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Feu'
pokemon = Pokemon.find_by name:'Dracofeu'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Fee'
pokemon = Pokemon.find_by name:'Melofee'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Eau'
pokemon = Pokemon.find_by name:'Carapuce'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Eau'
pokemon = Pokemon.find_by name:'Carabaffe'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Eau'
pokemon = Pokemon.find_by name:'Tortank'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Plante'
pokemon = Pokemon.find_by name:'Bulbizarre'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Plante'
pokemon = Pokemon.find_by name:'Herbizarre'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Plante'
pokemon = Pokemon.find_by name:'Florizarre'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Poison'
pokemon = Pokemon.find_by name:'Bulbizarre'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Poison'
pokemon = Pokemon.find_by name:'Herbizarre'
poketype.pokemons << pokemon

poketype = Type.find_by name:'Poison'
pokemon = Pokemon.find_by name:'Florizarre'
poketype.pokemons << pokemon
