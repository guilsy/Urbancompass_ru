class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pins
  has_many :pics, :through => :pins
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
