class Api::ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all.order(:activity_id)
    render "index.json.jb"
  end

  def create
    @challenge = Challenge.new(
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
      render json: { errors: @challenge.errors.full_messages }, status: 422
    end
  end

  def show
    @challenge = Challenge.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @challenge = Challenge.find_by(id: params[:id])
    @challenge.description = params[:description] || @challenge.description
    @challenge.user_id = params[:user_id] || @challenge.user_id
    @challege.activity_id = params[:activity_id] || @challenge.activity_id
    @challege.event_id = params[:event_id] || @challenge.event_id
    @challege.level = params[:level] || @challenge.level
    @challege.amount = params[:amount] || @challenge.amount
    @challege.deadline = params[:dealline] || @challenge.deadline
    @challenge.save
    render "show.json.jb"
  end

  def destroy
    challenge = Challenge.find_by(id: params[:id])
    challenge.destroy
    render json: { message: "Destroyed." }
  end
end
