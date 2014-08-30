class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  def initialize(theEmail, theName)
    email=theEmail
    name=theName
  end
  
  def getUser
    return 'testing'
  end
end
