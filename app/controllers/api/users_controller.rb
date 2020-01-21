class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      height: params[:height],
      weight: params[:weight],
      age: params[:age],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  # def first_user_method
  #   @user = User.first
  #   render "first_user.json.jb"
  # end

  # def new
  #   render "new.html.erb"
  # end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  # def create
  #   @user = User.new(
  #     email: params[:email],
  #     password_digest: params[:password_digest],
  #     name: params[:name],
  #     height: params[:height],
  #     weight: params[:weight],
  #     age: params[:age],
  #   )
  #   @user.save
  #   redirect_to "/users"
  # end

  # def edit
  #   @user = User.find_by(id: params[:id])
  #   render "edit.html.erb"
  # end

  # def update
  #   @user = user.find_by(id: params[:id])
  #   @user.email = params[:email]
  #   @user.password_digest = params[:password_digest]
  #   @user.name = params[:name]
  #   @user.height = params[:height]
  #   @user.weight = params[:weight]
  #   @user.age = params[:age]
  #   pp @user.errors.full_messages
  #   redirect_to "users"
  # end

  # def destroy
  #   @user = user.find_by(id: params[:id])
  #   @user.destroy
  #   redirect_to "/users"
  # end
end
