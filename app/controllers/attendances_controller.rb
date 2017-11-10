class AttendancesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @attendance = current_user.attendances.create(attendance_params)

    redirect_to @attendance.event, notice: "Thank you for attending!"
  end

  private

  def booking_params
    params
    .require(:attendance)
    .permit(:starts_at, :ends_at :event_id)
  end
end
