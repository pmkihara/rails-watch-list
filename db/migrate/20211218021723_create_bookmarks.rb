class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment, null: true
      t.integer :personal_rating
      t.boolean :watched, default: false
      t.references :movie, foreign_key: true
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
