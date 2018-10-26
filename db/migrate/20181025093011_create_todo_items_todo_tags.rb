class CreateTodoItemsTodoTags < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items_todo_tags do |t|
      t.references :todo_item, foreign_key: true
      t.references :todo_tag, foreign_key: true
    end
  end
end
