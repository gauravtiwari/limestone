class CreateAvatars < ActiveRecord::Migration[5.0]
  def change
    create_table :avatars do |t|
      t.text :image_data

      t.timestamps
    end
  end
end
