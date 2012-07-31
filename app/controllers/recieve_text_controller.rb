class RecieveTextController < ApplicationController
	def index
		message_body = params["Body"]
		from_number = params["From"]

		@need = Need.new(:source => from_number, :needtext => from_number, :category_id => 1)
		@need.save


		# SMSLogger.log_text_message from_number, message_body
	end

end
