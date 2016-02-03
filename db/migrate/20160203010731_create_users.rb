class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :avatar
      t.string :team
      t.text :profile
      t.string :works
      t.timestamps
    end
  end
end
