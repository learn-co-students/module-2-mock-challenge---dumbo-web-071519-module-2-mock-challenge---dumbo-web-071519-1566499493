class PowersController < ApplicationController

  before_action :current_power, only: [:show]

  def index
    @powers = Power.all
  end

  def show

  end

  def new
    @power = power.new
  end

  def create
    power = power.create(power_params)

    redirect_to power_path(power)
  end

  def edit

  end

  def update
    @power.update(power_params)

    redirect_to power_path(@power)
  end

  def destroy
    @power.destroy

    redirect_to powers_path
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end

  def current_power
    @power = Power.find(params[:id])
  end

end




