class HomeController < ApplicationController
    
    def index
    end
    
    def write
    end
    
    def new
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save
        
        redirect_to '/posts'
    end
    
    def posts
        @posts = Post.all
    end
    
    def delete
        @post_destroy = Post.find(params[:post_id])
        @post_destroy.destroy
        
        redirect_to '/posts'
    end
    
    def edit
        @post_edit = Post.find(params[:post_id])
    end
    
    def update
        @post_update = Post.find(params[:post_id])
        @post_update.title = params[:title]
        @post_update.content = params[:content]
        
        @post_update.save
        
        redirect_to '/posts'
    end

end
