class AppointmentsController < ApplicationController

     before_action :authorized, only: [:create, :destroy]

    def index
        @appointments = Appointment.all
        render json: @appointments
   end

   def create
        @appointment = Appointment.create(appointment_params)
        if @appointment.valid?
          render json: @appointment
     else
          render json: {error: "Please Log-In"}, status: 422
     end
        
   end

   def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        render json: @appointment
   end
   

   private

   def appointment_params
       params.permit(:date, :location, :character_id, :user_id, :outfit_id)
   end


end
