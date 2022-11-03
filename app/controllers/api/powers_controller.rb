class  Api::PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_power_not_found
	def index
		render json: Power.all, status: :ok
	end

	def show
		pow = Power.find(params[:id])
		render json: pow, status: :ok
	end

	def update
		pow = Power.find(params[:id])
		pow.update!(power_params)
		render json: pow, status: :accepted
	end

	private

	def render_power_not_found
		render json: {error: "Power not found"}
	end

	def power_params
		params.permit(:description)
	end
end
