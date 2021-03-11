class ListsController < ApplicationController

    def index
        @lists = List.all
        
        #render 'lists/index.html.erb'
    end

end
