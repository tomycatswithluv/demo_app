class ShoppingCart < ActiveRecord::Base
  attr_accessible :price, :product
  
  include UsersHelper
  
  def initialize
    puts "Got cart."  
  end
  
  def getUser
    thisUser=User.new("test", "testing")
    puts"Jenkins was tested here."
    puts "@@@@@@Carrt initializes the user:  " + thisUser.getUser.to_s
    return thisUser.getUser.to_s
  end
  
  def get_model
    puts "Getting model:  " + test_user.to_s
    test_user
  end
end
