class AddUserReferenceToSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :skills, :user, foreign_key: true
  end
end
