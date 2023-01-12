class PostController < ApplicationController
    #crud operations for Post table
    def index
        #get all the posts
        posts = Post.all
        render json: posts
    end

    def show
        #get the post
        post = Post.find(params[:id])
        render json: post
    end

    def create
        #create a new post
        post = Post.new
        post.title = params[:title]
        post.content = params[:content]
        post.save

        if post.persisted?
            render json: { message: "post was created" }
        else
            render json: { message: "post was not created" }
        end
    end

    def update
        #update the post
        post = Post.find(params[:id])
        post.title = params[:title]
        post.content = params[:content]
        post.save

        if post.persisted?
            render json: { message: "post was updated" }
        else
            render json: { message: "post was not updated" }
        end
    end

    def destroy
        #delete the post
        post = Post.find(params[:id])
        post.destroy
        render json: { message: "post was deleted" }
    end
end
