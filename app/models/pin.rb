class Pin < ActiveRecord::Base
	belongs_to :user
	has_many :photos
	has_attached_file :image, :styles => {:large => "640x700>", :medium => "300x300>", :thumb => "100x100>" }
end
