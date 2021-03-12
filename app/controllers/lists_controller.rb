class ListsController < ApplicationController

    def index
        @list = List.new
        @lists = List.all
        
        #render 'lists/index.html.erb'
    end

    def show 
        #I need to load the list
        #Which list?
        #params has all the data passed by the user
        @list = List.find(params[:id])
    end

end
