class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.string :name
      t.text :introduction
      t.string :profile_image_id

      t.timestamps
    end
  end
end
