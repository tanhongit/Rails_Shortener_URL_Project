class AddAdminToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean
  end
end

# rails c
# User.first.update_column :admin, true