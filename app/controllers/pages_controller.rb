class PagesController < ApplicationController
    def home
        if params.has_key?(:player) && !params[:player].strip.empty?
            cookies[:player] = params[:player].strip
        end
        @player = cookies[:player]
    end
end
