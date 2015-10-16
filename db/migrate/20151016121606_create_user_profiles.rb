class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :full_name
      t.references :user

      t.timestamps null: false
    end
  end
end
