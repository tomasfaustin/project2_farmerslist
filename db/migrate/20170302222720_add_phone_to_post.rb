class AddPhoneToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :phone, :string
  end
end
