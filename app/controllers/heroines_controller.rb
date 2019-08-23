class HeroinesController < ApplicationController  
    before_action :find_heroine, only: [:show, :destroy]   

    def index    
      @heroines = Heroine.all  
    end   

    def show  
    end   

    def new   
      @heroine = Heroine.new 
      @powers = Power.all 
    end   

  def create    
    @heroine = Heroine.create(heroine_params)    
      if @heroine.valid?      
          @heroine.errors      
          redirect_to @heroine    
      else      
      flash[:errors] = @heroine.errors.full_messages      
      redirect_to new_heroine_path    
     end  
    end   


  def destroy    
      @heroine.destroy    
      redirect_to heroines_path  
    end


    private   

    def heroine_params    
      params.require(:heroine).permit(:name, :super_name, :power_id)  
    end   
    
    def find_heroine    
      @heroine = Heroine.find(params[:id])  
    end 
end