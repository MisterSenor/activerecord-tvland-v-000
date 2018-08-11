class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network 

  def build_network(call_letters)
    new_network = Network.create(call_letters)
    
    self.character.build_show
    # def build_show(name)
    #   #name of the show = parameter
    #   new_show = Show.create(name)
    #   self.show = new_show 
    # end
  end 
  
end
