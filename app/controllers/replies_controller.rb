class RepliesController < ApplicationController
  def new
    @bug = Bug.find(params[:id])
    @reply = Reply.new
  end

  def create
    @bug = Bug.find(params[:id])
    @reply = Reply.new(reply_params)
    @reply.bug = @bug
    @reply.user = current_user
    if @reply.save
      redirect_to bug_path(@bug)
    else
      render 'new'
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:comment)
  end
end
