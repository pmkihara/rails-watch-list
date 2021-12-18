class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.integer :personal_rating
      t.boolean :watched
      t.references :movie, foreign_key: true
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
