class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
        render json: @appointments
   end

   def create
        @appointment = Appointment.create(appointment_params)
        render json: @appointment
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
