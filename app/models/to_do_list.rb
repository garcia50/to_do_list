class ToDoList < ApplicationRecord
  validates :users_id, :day, :task, presence: true, uniqueness: true

  belongs_to :user
end 