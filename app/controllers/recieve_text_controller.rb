class RecieveTextController < ApplicationController
	def index
		message_body = params["Body"]
		from_number = params["From"]

		@need = Need.new(:source => from_number, :needtext => from_number)
		@need.save


		# SMSLogger.log_text_message from_number, message_body
	end

end
