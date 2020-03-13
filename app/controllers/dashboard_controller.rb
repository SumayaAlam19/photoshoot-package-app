class DashboardController < ApplicationController
    before_action :authenticate_user!

    def index
        @packages = Package.where(user_id: current_user.id)
        @bookings =Booking.where(user_id: current_user.id)
    end

end
