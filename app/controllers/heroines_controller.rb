class HeroinesController < ApplicationController  
      before_action :find_heroine, only: [:show, :edit, :update, :destroy]  
      
      
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
        redirect_to @heroine 
      end

    def edit  
      end   
      
    def update    
        @heroine.update(heroine_params)    
        redirect_to @heroine 
      end

    def destroy    
        @heroine.destroy    
        redirect_to heroines_path  
      end



      private 

      def heroine_params    
        params.require(:heroine).permit(:name, :super_name)  
      end   


      def find_heroine    
        @heroine = Heroine.find(params[:id])  
      end 

end