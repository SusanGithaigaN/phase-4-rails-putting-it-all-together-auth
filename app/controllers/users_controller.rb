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

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :image_url, :bio)
    end
end
