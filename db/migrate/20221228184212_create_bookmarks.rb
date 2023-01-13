class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.text :description
      t.string :link
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
