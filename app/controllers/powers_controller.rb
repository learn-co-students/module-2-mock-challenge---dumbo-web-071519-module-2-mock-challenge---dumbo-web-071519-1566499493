class PowersController < ApplicationController  
          
          
  def index    
    @powers = Power.all  
          end   


          def show  

          end   
          
          
          def new   
            @power = Power.new  
          end   
        
        end


        #I was going to work on the power show page. Oh shoott @power oesn't exist yet I need ot fix hat