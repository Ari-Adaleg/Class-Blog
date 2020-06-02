class PostsController < ApplicationController
    def index
        @posts = Post.all
        @tags = Tag.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(posts_params)
        @post.user_id = current_user.id

        puts "....DONE!!!!!!!!! #{@post}"

        if @post.save
            redirect_to root_url
        else
            render :new
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to root_url
    end

    def show
    end
end


private
    def posts_params
        params.require(:post).permit(:title, :article, :img_url)
    end
