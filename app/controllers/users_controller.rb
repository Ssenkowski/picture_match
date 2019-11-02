class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: { message: surfboard.errors }, status: 400
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: { message: surfboard.errors }, status: 400
    end
  end

  # DELETE /users/1
  def destroy
    if @user.destroy
      render status:  204 #204 means success but nothing to render
    else
      render json: { message: "Unable to remove this user" }, status: 400
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:firstname, :lastname, :username)
    end
end
