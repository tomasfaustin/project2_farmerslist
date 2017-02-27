class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :message
      t.boolean :organic
      t.string :location

      t.timestamps
    end
  end
end
