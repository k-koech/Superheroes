class Api::HeroPowersController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :render_item_not_found
	def create
		her = HeroPower.new(hero_power_params)
		pow = Power.find(her.power_id)
		rel = Hero.find(her.hero_id)
		her.save!
		render json: rel, serializer: HeroShowSerializer, status: :created
	end

	private

	def hero_power_params
		params.permit(:strength, :power_id, :hero_id)
	end

	def render_item_not_found
		render json: {error: "Hero or power not found"}, status: :not_found
	end
end
