class CreateSoldiers < ActiveRecord::Migration
  def change
    create_table :soldiers do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
