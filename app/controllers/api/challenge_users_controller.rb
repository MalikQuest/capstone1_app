class Api::ChallengeUsersController < ApplicationController
  def index
    @challengeusers = ChallengeUser.all
    render "index.json.jb"
  end

  def create
    @challengeuser = ChallengeUser.find_or_initialize_by(
      challenge_id: params[:challenge_id],
      user_id: current_user.id,
      amount: params[:amount],
    )
    if @challengeuser.save
      render "show.json.jb"
    else
      render json: { errors: @challengeuser.errors.full_messages }, status: 422
    end
  end

  def show
    @challengeuser = ChallengeUser.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @challenge = Challenge.find_by(id: params[:id])
    @challenge.user_id = params[:user_id] || @challenge.user_id

    @challege.amount = params[:amount] || @challenge.amount

    render "show.json.jb"
  end

  def destroy
    challengeuser = ChallengeUser.find_by(id: params[:id])
    challengeuser.destroy
    render json: { message: "Destroyed." }
  end
end
