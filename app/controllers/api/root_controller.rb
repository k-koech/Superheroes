class  Api::RootController < ApplicationController
	def index
		render json: {Welcome: "enter a valid endpoint in the url"}
	end
end
