class AddPostIdToMicropost < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :post_id, :integer
  end
end
