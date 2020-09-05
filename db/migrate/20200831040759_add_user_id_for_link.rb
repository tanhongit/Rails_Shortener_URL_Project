class AddUserIdForLink < ActiveRecord::Migration[6.0]
  def change
    add_reference :links, :users, null: true, foreign_key: true
  end
end
