class AddColumnStatusToToDoLists < ActiveRecord::Migration[5.1]
  def change
    add_column :to_do_lists, :status, :boolean, default: false
  end
end
