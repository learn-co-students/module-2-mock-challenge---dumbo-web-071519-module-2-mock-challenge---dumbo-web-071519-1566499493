class HeroinesController < ApplicationController
  
  
  def index
    @heroines = Heroine.all
  end

  def show
  @heroine = Heroine.find(params[:id])
  end

  def new
  @heroine = Heroine.new
  end

  def create
  @heroine = Heroine.create(heroine_params)
  # byebug
  redirect_to heroine_path(@heroine.id)
  end

def heroine_params
  params.require(:heroine).permit(:name, :super_name, :power_id)
  
end



end
