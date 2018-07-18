class ToDoListsController < ApplicationController
  before_action :check_user

  def index
    @to_do_lists = current_user.to_do_lists 
  end

  def new 
    @to_do_list = current_user.to_do_lists.new
  end

  def create
    @to_do_list = current_user.to_do_lists.new(todo_params)
    if @to_do_list.save
      UserNotifier.send_tasks_email(current_user).deliver_now
      flash[:success] = "Lets get it done!"
      redirect_to user_to_do_lists_path(current_user)
    else
      flash.now[:error] = "OOPS! Something is missing!"
      render :new
    end
  end

  def show
    @to_do_list = current_user.to_do_lists.find
  end

  def destroy
    @to_do_list = ToDoList.find(params[:id])
    @to_do_list.destroy

    redirect_to user_to_do_lists_path(current_user)
  end

  def complete
    ToDoList.where(id: params[:task_ids]).update_all(status: true)
    redirect_to user_to_do_lists_path(current_user)
  end

  private
    def todo_params
      params.require(:to_do_list).permit(:day, :task)
    end
end