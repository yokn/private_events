# frozen_string_literal: true

class AttendancesController < ApplicationController
  before_action :set_attendance, only: %i[show edit update destroy]

  # GET /attendances
  # GET /attendances.json
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1
  # GET /attendances/1.json
  def show; end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit; end

  # POST /attendances
  # POST /attendances.json
  def create
    uid = params[:user_id] || User.find_by_username(params[:attendance][:attendee]).id
    eid = params[:event_id]
    a = Attendance.new(user_id: uid, event_id: eid)
    if a.save
      flash[:success] = 'Added to the attendance list!'
    else
      flash[:error] = 'Failed'
    end
    redirect_to event_path(eid)
  end

  def invite
    @attendance = Attendance.new
    render :invite, event_id: params[:event_id]
  end

  # PATCH/PUT /attendances/1
  # PATCH/PUT /attendances/1.json
  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'Attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: 'Attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_attendance
    @attendance = Attendance.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def attendance_params
    params.fetch(:attendance, {}).permit(:user_id, :event_id, attendance: [:attendee])
  end
end
