class HeroinesController < ApplicationController
  before_action :find_heroine , only: [:show]
  
  #all heroines
  def index
    @heroines = Heroine.all
  end

  #view heroine
  def show
  end

  #creates new heroine
  def new
    @heroine = Heroine.new
  end

  private

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
   end
end
