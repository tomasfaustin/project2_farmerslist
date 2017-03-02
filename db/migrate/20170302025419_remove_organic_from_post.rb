class RemoveOrganicFromPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :organic, :boolean
  end
end
