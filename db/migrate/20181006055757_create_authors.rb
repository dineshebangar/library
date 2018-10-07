class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :bio, :min_limit => 50, :max_limit => 100
      t.string :profile_pic
      t.text :academics
      t.text :awards

      t.timestamps
    end
  end
end
