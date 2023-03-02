class WebhooksController < ApplicationController
skip_before_action :verify_authenticity_token
	def init
		render json: request.body.read
	end
end
