class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :prototype_id
      t.integer :status
      t.string :content
      t.timestamps
    end
  end
end
