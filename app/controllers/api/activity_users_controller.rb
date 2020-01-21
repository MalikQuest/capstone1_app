class Api::ActivityUsersController < ApplicationController
  def index
    @activityusers = ActivityUser.all
    render "index.json.jb"
  end

  def create
    if params[:user_id] == current_user.id
      @activityuser = ActivityUser.find_or_initialize_by(
        activity_id: params[:activity_id],
        user_id: current_user.id,
      )
      if @activityuser.save
        render "show.json.jb"
      else
        render json: { errors: @activityuser.errors.full_messages }, status: 422
      end
    else
      render json: { errors: ["Wrong user"] }, status: 422
    end
  end

  def show
    @activityuser = ActivityUser.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @activityuser = ActivityUser.find_by(id: params[:id])
    @activityuser.activity_id = params[:activity_id] || @activityuser.activityuser
    @activityuser.user_id = params[:user_id] || @activityuser.user_id

    @activityuser.save
    render "show.json.jb"
  end

  def destroy
    activityuser = ActivityUser.find_by(id: params[:id])
    activityuser.destroy
    render json: { message: "Destroyed." }
  end

  def set_multiple
    # First destroy all current activity users
    current_user.activity_users.destroy_all

    # Then create each activity user
    params[:activity_ids].each do |activity_id|
      @activityuser = ActivityUser.new(
        activity_id: activity_id,
        user_id: current_user.id,
      )
      @activityuser.save
    end
    render json: { message: "ActivityUsers updated!" }
  end
end
