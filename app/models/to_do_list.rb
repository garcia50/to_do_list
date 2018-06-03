class ToDoList < ApplicationRecord
  validates_presence_of :name, :day

  # validates_presence_of :name
  # validates_presence_of :day
end 