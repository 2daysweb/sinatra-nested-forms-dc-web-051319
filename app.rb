require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
    
  

   get '/' do 
 "Welcome to the Nested Forms Lab!"
 erb :root  
   end 
   
   get '/new' do
    erb :'pirates/new'
   end 
   
   post '/pirates' do 
      
     @pirate = Pirate.new(params[:pirate])
     
       params[:pirate][:ships].each do |details|
        Ship.new(details)
   
    end 
    
      @ships = Ship.all 
      
        erb :'pirates/show' 
      
      
      
    #   @pirate_name = params["pirate"]["name"]
    #   @pirate_weight = params["pirate"]["weight"]
    #   @pirate_height = params["pirate"]["height"]
      
    #   @ship_name_1 = params["pirate"]["ships"][0]["name"]
    #   @ship_name_2 = params["pirate"]["ships"][1]["name"]
    #   @ship_type_1 = params["pirate"]["ships"][0]["type"]
    #   @ship_type_2 = params["pirate"]["ships"][1]["type"]
    #   @ship_booty_1 = params["pirate"]["ships"][0]["booty"]
    #   @ship_booty_2 = params["pirate"]["ships"][1]["booty"]
      
    
      
   end 
  end
end
