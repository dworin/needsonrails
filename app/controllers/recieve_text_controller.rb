class RecieveTextController < ApplicationController
	def index
		message_body = params["Body"]
		from_number = params["From"]

		SMSLogger.log_text_message from_number, message_body
	end
	
end
