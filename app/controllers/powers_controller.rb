class PowersController < ApplicationController
    def index
        render json: Power.all, status: :ok
    end
end
