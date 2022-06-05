# user controller
class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  before_action :find_user, only: %i[show update destroy]

  # GET /users
  def index
    users = User.all
    json_response(users)
  end

  # GET /users/:id
  def show
    json_response(@user)
  end

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: 'user_created', auth_token: auth_token }
    json_response(response, :created)
  end

  def destroy
    if @user.author_pseudonym.nil?
      @user.destroy
      json_response({ message: "User #{@user.name} deleted successfully" })
    else
      json_response({ message: "User #{@user.name} is an author. It cannot be deleted" })
    end
  end

  def find_user
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.permit(:name, :email, :password, :author_pseudonym, :password_confirmation)
  end
end
