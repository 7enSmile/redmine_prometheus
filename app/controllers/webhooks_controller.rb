class WebhooksController < ApplicationController
skip_before_action :verify_authenticity_token
	def init
		head :ok
	end
end
