class SendTextController < ApplicationController

	def index

		# number_to_send_to = params[:number_to_send_to]
		number_to_send_to = "2487628805"

		twilio_sid = "ACc619e3c3b6f8c76630562b662ac7af12"
		twilio_token = "65f228c54fe4231edfc0ff366e3925e7"
		twilio_phone_number = "3134990491"

		@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

		@twilio_client.account.sms.messages.create(
			:from => "+1#{twilio_phone_number}",
			:to => number_to_send_to,
			:body => "This is message is sent to you by The Needs Report"
			)

	end


end
