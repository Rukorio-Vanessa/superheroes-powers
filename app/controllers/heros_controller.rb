class HerosController < ApplicationController
    def index 
        render json: Hero.all, status: :ok
    end
end
