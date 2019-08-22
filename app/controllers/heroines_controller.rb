class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show]
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
  end

  private
  def heroine_params
    params.require(:heroine).permit(:id, :name, :super_name, :power_id)
  end

  def find_heroine
    #byebug
    @heroine = Heroine.find(params[:id])
    #can't find params
  end

end
