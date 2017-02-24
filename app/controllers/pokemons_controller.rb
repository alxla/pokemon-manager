class PokemonsController < ApplicationController
  before_action :find_pokemon, only: [:show, :edit, :destroy, :update]
  layout "show", only: [ :show ]

  def show
  end

  def index
    @pokemons = Pokemon.all
  end

  def new
    @types = Type.all
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.save
    redirect_to pokemon_path(@pokemon)
  end


  def edit
  end

  def update
    @types = Type.all
    @pokemon.update(pokemon_params)
    redirect_to pokemon_path(@pokemon) # Show
  end

  def destroy
    @pokemon.destroy
    redirect_to pokemons_path
  end

  private

  def find_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
    # *Strong params*: You need to *whitelist* what
    # can be updated by the user
    # Never trust user data!
    params.require(:pokemon).permit(:name, :height, :weight, :types)
  end
end
