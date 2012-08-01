class RecieveTextController < ApplicationController
	def index
		message_body = params["Body"]
		from_number = params["From"]

		from_city = params["FromCity"]
		from_country = params["FromCountry"]
		from_state = params["FromState"]

		@need = Need.new(:source => from_number, :needtext => message_body, :category_id => 1, :country => from_country, :state => from_state, :city => from_city)
		@need.save

		render :nothing => true


		# SMSLogger.log_text_message from_number, message_body
	end

end
