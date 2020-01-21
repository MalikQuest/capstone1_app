class Api::ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render "index.json.jb"
  end

  def create
    @activity = Activity.new(
      name: params[:name],
      challenge: params[:challenge],
    )
    @activity.save
    render "show.json.jb"
  end

  def show
    @activity = Activity.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @activity = activity.find_by([:id])
    @activity.name = params[:name] || @activity.name
    @activity.challenge = params[:challenge] || @activity.challenge
    @activity.save
    render "show.json.jb"
  end

  def destroy
    activity = Activity.find_by(id: params[:id])
    activity.destroy
    render json: { message: "Destroyed" }
  end
end
