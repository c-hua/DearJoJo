class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = Comment.all
   
  end

  def show
    @id = params[:id]
@image = Image.find(@id)
  end

  def new
    
  end

  def create
    # raise params.inspect
        Comment.create(params.require(:comment).permit(:name, :date, :time, :message, :image))
    redirect_to comments_path

#     @image = Image.new(params[:image])
# if @image.save
# redirect_to :action => :show, :id => @image.id
end
  end

  def edit
  end

  def update
  end

  def destroy
  end

