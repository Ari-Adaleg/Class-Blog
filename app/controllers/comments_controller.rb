class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        
    end

    def new
        @comment = Comment.new(post_id: params[:post_id])
    end

    def create
        @comment = Comment.new(comments_params)
        @comment.name = current_user.name
        @comment.user_id = current_user.id
        @comment.post_id = params[:post_id]
        p "....DONE!!!!!!!!! #{@comment.inspect}"

        if @comment.save
            redirect_to users_post_path(params[:post_id])
        else
            render :new
        end
    end

    def destroy
        @comment = Comment.find(params[:post_id])
        @comment.destroy

        redirect_to users_post_path
    end

end

private
    def comments_params
        params.require(:comment).permit(:name, :message)
    end