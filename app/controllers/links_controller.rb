class LinksController < ApplicationController
    def index
      @link = Link.all

    end

    def new
      @link = Link.new
    end


end
