class AddPhotoUrlToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :photo_url, :string
  end
end
