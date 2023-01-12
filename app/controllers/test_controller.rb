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

end
