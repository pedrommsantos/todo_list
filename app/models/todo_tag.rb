class TodoTag < ApplicationRecord
  has_and_belongs_to_many :todo_items, join_table: :todo_items_todo_tags
end
