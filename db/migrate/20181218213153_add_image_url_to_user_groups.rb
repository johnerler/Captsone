class AddImageUrlToUserGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :user_groups, :image_url, :string
  end
end
