class UsersController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def create
        user = User.create!(user_params)
        session[:user_id]
        render json: user, status: :created
    end

    def show
        user = User.find(session[:user_id])
        render json: user, status: :ok
    end

    def update
        user = User.find(session[:user_id])
        user.update!(user_params)
        render json: user, status: :ok
    end

    private

    def user_params
        params.permit(:name, :phone, :email, :location, :password, :account_type)
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def render_record_not_found
        render json: {errors: "Not authorized"}, status: :not_authorized
    end

end
