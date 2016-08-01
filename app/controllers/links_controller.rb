class LinksController < ApplicationController
    def index
      @links = Link.all
      @link = Link.new
      render :index
    end



    def show
      @link = Link.find(params["id"])
      render :show
    end

    def edit

    end

    def create
      #,url: params
      @link = Link.create!(link_params)
      redirect_to links_path 
    end

    def update
    end

    def destroy

    end
    private def link_params
    # Hash style acccess for params
    # params["pet"] # {name: "Gridley"}

    # Strong params requiring a key to be present and allow
    params.require("link").permit(:name, :url)
  end
end
