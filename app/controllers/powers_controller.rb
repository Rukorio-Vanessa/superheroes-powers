class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Power.all, status: :ok
    end

    def show
        power = find_power
        render json: power, status: :ok
    end

    def update
        power = find_power
        power.update(power_params)
        if power.valid?
            render json: power, status: :accepted
        else
            render json: { errors: ["validation errors"] }, status: :unprocessable_entity
        end
    end

    private
    def find_power
        Power.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end

    def power_params
        params.permit(:description)
    end

end
