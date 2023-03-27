class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :validation_errors


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
        render json: power, status: :accepted
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

    def validation_errors(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
