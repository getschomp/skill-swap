class CreateTableUsersSkills < ActiveRecord::Migration
  def change
    create_table :user_skills do |t|
      t.integer :skill_id, null: false
      t.integer :user_id, null: false
      t.boolean :known?, null: false
      # if user knows the skill know?=true
      # if user dosn't know the skill know?=false
      t.string :skill_level
      t.string :description
    end
  end
end
