class TypesController < ApplicationController
before_action :find_type, only: [:show, :edit, :destroy, :update]

  def show
  end

  def index
    @types = Type.all
  end

  def new
    @pokemons = Pokemon.all
    @types = Type.all
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    if @type.save
      redirect_to type_path(@type) # Show
    else
      render :new
    end
  end


  def edit
    @types = Type.all
  end

  def update
    if @type.update(type_params)
      redirect_to type_path(@type) # Show
    else
      render :edit
    end
  end

  def destroy
    @type.destroy
    redirect_to types_path
  end

  private

  def find_type
    @type = Type.find(params[:id])
  end

  def type_params
    # *Strong params*: You need to *whitelist* what
    # can be updated by the user
    # Never trust user data!
    params.require(:type).permit(:name, :weakness, :pic, :pic_cache)
  end

end
