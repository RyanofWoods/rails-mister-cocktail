class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      # redirect later when path is available
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
