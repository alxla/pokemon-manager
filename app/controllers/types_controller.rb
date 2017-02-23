class TypesController < ApplicationController
before_action :find_type, only: [:show, :edit, :destroy, :update]

  def show
    @types = Type.all
  end

  def index
  end

  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @type.pokemon = Type.find(params[:pokemon_id])
    if @type.save
      redirect_to pokemon_path(@type.pokemon) # Show
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @type.update(type_params)
      redirect_to pokemon_path(@type.pokemon) # Show
    else
      render :edit
    end
  end

  def destroy
    @type.destroy
    redirect_to pokemon_path(@type.pokemon)
  end

  private

  def find_type
    @type = Type.find(params[:id])
  end

  def type_params
    # *Strong params*: You need to *whitelist* what
    # can be updated by the user
    # Never trust user data!
    params.require(:type).permit(:name, :weakness)
  end

end
