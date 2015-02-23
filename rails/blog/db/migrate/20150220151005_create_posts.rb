class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.integer :rank
      t.text :context
      t.boolean :active

      t.timestamps
    end
  end
end
