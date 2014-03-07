class Pin < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	belongs_to :user
	has_many :pics
	has_attached_file :image, :styles => {:large => "640x480>", :medium => "200x200>", :thumb => "100x100>" }
	searchable do
		text 		:metro 
		integer :price
		integer :bedroom_number
	end

end
