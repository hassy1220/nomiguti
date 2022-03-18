class RemoveBoFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :bo, :text
  end
end
