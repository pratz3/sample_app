class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  
  has_secure_password
  
  before_save {|user| user.email = email.downcase }
  before_save :create_token
  
  validates :name, :presence => true,
                   :length => {:maximum => 50} 
                   
  Valid_Email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, :presence => true, 
                    :format => {:with => Valid_Email},
                    :uniqueness => {:case_sensitive => false}
  
  validates :password, :length => {:minimum => 6}
  
  validates :password_confirmation, :presence => true
  
  
  private
  
    def create_token
      self.token = SecureRandom.urlsafe_base64
    end
  
end
