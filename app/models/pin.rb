class Pin < ActiveRecord::Base
	belongs_to :user
	has_many :pics
	has_attached_file :image, :styles => {:large => "640x480>", :medium => "200x200>", :thumb => "100x100>" }
	searchable do
		text :metro, :price, :bedroom_number
	end
end
