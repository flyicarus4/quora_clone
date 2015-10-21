class User < ActiveRecord::Base
  has_many :questions
  has_many :answers

  def self.authen(username, password)
  	#if username and password match redirect to next page
  	#else return nil
  end
end
