class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    authorize @comment
  end

  def create
    @comment = Comment.create(comment_params)
    @comment.task = Task.find(params[:task_id])
    authorize @comment
    if @comment.save
      respond_to do |format|
        format.html { redirect_to tasks_path(@comment.task_id) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    authorize @comment
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  private 

  def comment_params
    params.require(:comment).permit(:id, :content, :task_id)
  end
end
