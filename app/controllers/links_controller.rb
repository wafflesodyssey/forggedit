class LinksController < ApplicationController
    def index
      @links = Link.all

    end

    def new
      @link = Link.new
    end

    def create
      @link 
    end

end
