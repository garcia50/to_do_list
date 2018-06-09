class ToDoListsController < ApplicationController
  before_action :check_user, only: [:new, :index]

  def index
    @to_do_lists = current_user.to_do_lists 
  end
end