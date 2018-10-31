class TodoTagsController < ApplicationController
  before_action :set_todo_tag, only: [:show, :edit, :update, :destroy]
  
  def index
    @todo_tags = TodoTag.all
  end

  def new
    @todo_tag = TodoTag.new
  end

  def destroy
    @todo_tag.destroy
    redirect_to @todo_tag
  end

  def show
  end
  
  def create
    @todo_tag = TodoTag.create(todo_tag_params)
    redirect_to @todo_tag
  end

  def edit
  end

  def update
    respond_to do |format|
      if @todo_tag.update(todo_tag_params)
        format.html { redirect_to @todo_tag, notice: 'Todo tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_tag }
      else
        format.html { render :edit }
        format.json { render json: @todo_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_todo_tag
    # @todo_tag = TodoTag.includes(todo_items: [:todo_list])#.where(todo_lists: { archived: false })
    @todo_tag = TodoTag.find(params[:id])
    @obj = @todo_tag.todo_items.includes(:todo_list).where(todo_lists: { archived: false })
  end

  def todo_tag_params
    params.require(:todo_tag).permit(:content)
  end
end
