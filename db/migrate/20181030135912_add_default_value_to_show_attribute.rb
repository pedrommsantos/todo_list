class AddDefaultValueToShowAttribute < ActiveRecord::Migration[5.2]
  def change
    change_column :todo_lists, :archived, :boolean, default: false, null: false
  end


end



