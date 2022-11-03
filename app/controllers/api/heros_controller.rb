class  Api::HerosController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
	def index
		render json: Hero.all, status: :ok
	end

	def show
		hero = Hero.find(params[:id])
		render json: hero, serializer: HeroShowSerializer, status: :ok
	end

	private

	def render_not_found
		render json: {error: "Hero not found"}, status: :not_found
	end
end
