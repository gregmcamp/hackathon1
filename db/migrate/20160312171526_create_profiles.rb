class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :gender
      t.integer :age
      t.string :bio
      t.text :about_me
      t.attachment :prof_pic
      t.attachment :bg_pic

      t.timestamps null: false
    end
  end
end
