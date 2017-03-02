class AddOrganicToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :organic, :string
  end
end
