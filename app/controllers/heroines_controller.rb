class HeroinesController < ApplicationController
    before_action :current_heroine, only: [:show]

  def index
    @heroines = Heroine.all
  end

  def show

  end

  def new
    @heroine = Heroine.new
  end

  def create 
    @heroine = Heroine.create(heroine_params)
    redirect_to heroine_path(@heroine)
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def current_heroine
    @heroine = Heroine.find(params[:id])
  end

end
