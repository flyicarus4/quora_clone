class User < ActiveRecord::Base
  has_many :questions
  has_many :answers

  def self.authen(name, pass)
  	#if username and password match redirect to next page
  	#else return nil
  	if User.find_by(username: name, password: pass)
  		return true
  	else
  		return nil
  	end
  end
end
