class DashboardsController < ApplicationController
	def show
		@dashboard = Dashboard.new(current_user)
	end

	private

	def shouts_parameters
		params.require(:shout).permit(:body)
	end

end