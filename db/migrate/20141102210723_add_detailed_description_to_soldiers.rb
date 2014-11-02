class AddDetailedDescriptionToSoldiers < ActiveRecord::Migration
  def change
  	change_table :soldiers do |t|
  		t.text :detailed_description
  	end
  end
end
