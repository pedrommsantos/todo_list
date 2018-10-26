class TodoItem < ApplicationRecord
  belongs_to :todo_list
  has_and_belongs_to_many :todo_tags, join_table: :todo_items_todo_tags
  
  def completed?
   !completed_at.blank?
  end
end