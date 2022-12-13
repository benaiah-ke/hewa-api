class OffsettersController < ApplicationController\

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def show
        offsetter = Offsetter.find(params[:id])
        render json: offsetter, status: :ok
    end

    def create
        offsetter = Offsetter.create!(user_id: session[:user_id])
        render json: { user: User.find(session[:user_id]), offsetter: offsetter }, status: :created
    end

    private

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages, session: session }, status: :unprocessable_entity
    end

    def render_record_not_found
        render json: {errors: "Not authorized"}, status: :not_authorized
    end

end
