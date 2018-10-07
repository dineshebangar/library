class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :author_id
      t.string :name
      t.string :short_description
      t.text :long_description
      t.integer :chapter_index
      t.date :publication_date
      t.text :genre

      t.timestamps
    end
    add_index :books, :author_id
  end
end
