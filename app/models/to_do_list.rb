class ToDoList < ApplicationRecord
  validates :user_id, :day, :task, presence: true
  belongs_to :user
end 