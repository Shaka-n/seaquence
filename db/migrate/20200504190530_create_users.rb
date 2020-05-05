class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :country
      t.text :bio
      t.string :profile_img
      t.timestamps
    end
  end
end
