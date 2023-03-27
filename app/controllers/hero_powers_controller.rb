class HeroPowersController < ApplicationController
    def create
        hero_powers = HeroPower.create(hero_power_params)
        if hero_powers.valid?
            render json: hero_powers, status: :created
        else
            render json: { errors: ["validation errors"] }, status: :unprocessable_entity
        end
    end

    private
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
