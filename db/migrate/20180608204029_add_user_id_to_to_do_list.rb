class AddUserIdToToDoList < ActiveRecord::Migration[5.1]
  def change
    add_column :to_do_lists, :user_id, :integer
    add_index :to_do_lists, :user_id
  end
end
