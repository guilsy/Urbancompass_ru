class AddAttachmentImageToAgents < ActiveRecord::Migration
  def self.up
    change_table :agents do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :agents, :image
  end
end
