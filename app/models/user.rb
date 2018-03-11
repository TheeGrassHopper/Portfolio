class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         # to doo :omniauthable

  validates_presence_of :name
  
  def first_name
  	self.name.split.first
  end

  def last_name
  	self.name.split.last
  end
end