class AddOwnerToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :owner, :string
  end
end
