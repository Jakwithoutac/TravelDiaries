class PostsController < ApplicationController
    def index
    end
     def new
        @post = Post.new
         @location=Location.new
    end
     def create
         @post=Post.new(post_params)
         @post.user_id = current_user.id
         @post.save
         @location=Location.new(location_params)
         @location.save
         redirect_to @post
    end
    def edit
    end
    def show
        @post=Post.find(params[:id])
    end
    def update
    end
    def destroy
    end
    
    private
    def post_params
        params.require(:post).permit(:user_id, :title, :date, :body)
    end
     def location_params
        params.require(:location).permit(:country, :area, :picture)
    end
end
