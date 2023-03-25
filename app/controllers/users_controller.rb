class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.password != params[:password_confirmation]
            render json: { errors: ["Passwords do not match"] }, status: :unprocessable_entity
        elsif user.save
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages}, status: :unprocessable_entity
        end        
    end

    # auto login feature
    def show
        # user = User.find(user_params)
        # return current logged in user
        if logged_in?
            render json: current_user.slice(:id, :username, :image_url, :bio), status: :ok
        else
            render json: { error: "Unauthorized" }, status: :unauthorized
        end        
    end

    private

    def user_params
        params.permit(:username, :password, :image_url, :bio)
    end

    def logged_in?
        session[:user_id].present?
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
end
