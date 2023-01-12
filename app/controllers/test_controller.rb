class TestController < ApplicationController
    def index
        render json: { message: 'Hello World' }
    end

    #create new endpoint get two strings and return the longest one
    def longest
        #get the params
        string1 = params[:string1]
        string2 = params[:string2]
        longest =""

        #check which string is longer
        if string1.to_s.length > string2.to_s.length

            longest = string1
        else
            longest = string2
        end
        
        #return the longest string
        render json: { message: longest }
    end

    def add_row_to_posts_table()

        # add some constraints to the title and content
        if params[:title].to_s.length < 1
            render json: { message: "title is too short" }
            return
        end

        if params[:content].present? == false
            render json: { message: "content is missing" }
            return
        end

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


end
