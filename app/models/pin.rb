class Pin < ActiveRecord::Base
	belongs_to :user
	has_many :pics
	has_attached_file :image, :styles => {:large => "640x480>", :medium => "300x300>", :thumb => "200x200>" }
end
