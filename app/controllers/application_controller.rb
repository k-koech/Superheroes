class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable

	private

	def render_unprocessable(invalid)
		render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
	end
end
