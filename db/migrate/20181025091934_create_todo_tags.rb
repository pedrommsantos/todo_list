class CreateTodoTags < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_tags do |t|
      t.string :content

      t.timestamps
    end
  end
end
