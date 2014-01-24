class Pic < ActiveRecord::Base
	belongs_to :pin
	belongs_to :user
  has_attached_file :image, :styles => {:large => "640x480>", :medium => "200x200>", :thumb => "100x100>" }
end
