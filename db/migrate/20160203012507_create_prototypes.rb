class CreatePrototypes < ActiveRecord::Migration[5.0]
  def change
    create_table :prototypes do |t|
      t.integer :user_id
      t.text :title
      t.text :catch_copy
      t.text :concept
      t.timestamps
    end
  end
end
