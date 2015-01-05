class Soldier < ActiveRecord::Base
  attr_accessible :name, :description, :detailed_description, :photo

  has_attached_file :photo, :styles => { :small => "150x150>", :large => "640x480>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  self.per_page = 6
end
