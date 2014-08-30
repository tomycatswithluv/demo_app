require 'spec_helper'

describe "ShoppingCart" do
  

  describe "#getUser" do
    it "gets a user" do
      cart=ShoppingCart.new 
      expect(cart.getUser.to_s).to eq("testing")
      
      # Stub the get user method to return something else.
      user_mock=double('User')
      User.stub(:new) { user_mock }
      user_mock.stub(:getUser).and_return("Lisa")
      
      expect(cart.getUser.to_s).to eq("Lisa")   
      
      #Stub module methods.
      expect(cart.get_model.to_s).to eq("Cream of wheat is good for you.")
      
      cart.stub(:test_user).and_return("Personally, I like ham.")
      
      expect(cart.get_model.to_s).to eq("Personally, I like ham.")      
    end
  end  #end describe
end
