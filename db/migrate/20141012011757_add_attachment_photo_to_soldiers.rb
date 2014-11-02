class AddAttachmentPhotoToSoldiers < ActiveRecord::Migration
  def self.up
    change_table :soldiers do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :soldiers, :photo
  end
end
