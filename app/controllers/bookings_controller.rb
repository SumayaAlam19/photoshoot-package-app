class BookingsController < ApplicationController
    before_action :authenticate_user!

    def index
        @packages = Package.where(user_id: current_user.id)
        @bookings =Booking.where(user_id: current_user.id)
    end

    def create
        package = Package.find(params[:package_id])
        @booking = package.bookings.create!(user: current_user)
        redirect_to dashboard_index_path
    end
    
    private

    def booking_params
        params.require(:booking).permit(:package_id)
    end



end
