class Pirate
  
  attr_reader :name, :weight, :height 
  def initialize(args)
    @name = args[:name] 
    @weight = args[:weight] 
    @height = args[:height] 
  end 
end