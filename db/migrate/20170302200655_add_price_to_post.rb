class AddPriceToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :price, :string
  end
end
