class ToDoListsController < ApplicationController
  before_action :check_user, only: [:new, :index]
end