class Api::WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render "index.json.jb"
  end

  def create
    @workout = Workout.new(
      description: params[:description],
      user_id: current_user.id,
      activity_id: params[:activity_id],
      event_id: params[:event_id],
      level: params[:level],
      amount: params[:amount],
      deadline: params[:deadline],
    )
    if @challenge.save
      render "show.json.jb"
    else
      render json: { errors: @workout.errors.full_messages }, status: 422
    end
  end

  def show
    @workout = Workout.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @workout = Workout.find_by(id: params[:id])
    @workout.description = params[:description] || @challenge.description
    @workout.user_id = params[:user_id] || @challenge.user_id
    @workout.activity_id = params[:activity_id] || @challenge.activity_id
    @workout.event_id = params[:event_id] || @challenge.event_id
    @workout.level = params[:level] || @challenge.level
    @workout.amount = params[:amount] || @challenge.amount
    @workout.deadline = params[:dealline] || @challenge.deadline
    @workout.save
    render "show.json.jb"
  end

  def destroy
    workout = Workout.find_by(id: params[:id])
    workout.destroy
    render json: { message: "Destroyed." }
  end
end
