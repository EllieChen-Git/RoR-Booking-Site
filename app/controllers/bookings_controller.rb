class BookingsController < ApplicationController

    def index
        @bookings = session[:bookings]
        @bookings ||= []
    end

    def create
        if session[:bookings] == nil
            session[:bookings] = []
        end
        session[:bookings].push(params[:booking])
        
        redirect_to bookings_path
    end

    def new
        
    end

    def show

    end

    def edit
        @booking_id = params[:id].to_i
        @booking = session[:bookings][@booking_id]

    end

    def update
        @booking_id = params[:id].to_i
        session[:bookings][@booking_id] = params[:booking]

        redirect_to bookings_path
    end

    def destroy
        
    end
end