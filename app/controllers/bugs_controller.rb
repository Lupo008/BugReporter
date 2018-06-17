class BugsController < ApplicationController
  before_action :bug, only: [:show, :edit, :update, :destroy]

  def index
    @bugs = Bug.all
  end

  def show
  end

  def new
    @bug = Bug.new
  end

  def create
    @bug = Bug.new(bug_params)
    @bug.user = current_user
    if @bug.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @bug.update_attributes(bug_params)
      redirect_to bug_path(@bug)
    else
      render 'edit'
    end
  end

  def destroy
    if @bug.destroy
      redirect_to '/'
    else
      redirect_to bug_path(@bug)
    end
  end

  private

  def bug_params
    params.require(:bug).permit(:description, :os)
  end

  def bug
    @bug = Bug.find(params[:id])
  end
end
