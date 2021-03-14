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

    def create
        # params opens up the envelope the user sends you when they submit HTTP requests
        
        #raise list_params.inspect
        #instantiate a new list object
        @list = List.new(list_params)

        #take the data from the form using the naming convention
        @list.name = params[:list][:name]

        #insert into database
        @list.save

        # tell browser to redirect to show action and find the ID of this list object
        redirect_to list_path(@list)
    end

    private
    def list_params
        # sanitize and explicitly permit the name key in the lift key of my params hash
        params.require(:list).permit(:name)
    end

end
