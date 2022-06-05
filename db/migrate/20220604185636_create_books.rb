# Books table
class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, limit: 256, null: false
      t.string :description, limit: 512, null: false
      t.blob :cover_image
      t.float :price, null: false
      t.boolean :published, null: false, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
