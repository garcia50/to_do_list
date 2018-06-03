class ToDoList < ApplicationRecord
  validates_presence_of :name, :day
end 