class Api::ActivityUsersController < ApplicationController
  def index
    @activityusers = ActivityUser.all
    render "index.json.jb"
  end

  def create
    @activityuser = ActivityUser.find_or_initialize_by(
      activity_id: params[:activity_id],
      user_id: current_user.id,
    )
    if @activityuser.save
      render "show.json.jb"
    else
      render json: { errors: @activityuser.errors.full_messages }, status: 422
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
end
