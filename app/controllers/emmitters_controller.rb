class EmmittersController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def create
        emmitter = Emmitter.create!(annual_emmission: params[:annual_emmission], user_id: session[:user_id])
        render json: { user: User.find(session[:user_id]), emmitter: emmitter }, status: :created
    end

    def update
        emmitter = Emmitter.update!(emmitter_params)
        render json: { user: emmitter.user, emmitter: emmitter }, status: :ok
    end

    private

    def emmitter_params
        params.permit(:annual_emmission)
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages, session: session }, status: :unprocessable_entity
    end

    def render_record_not_found
        render json: {errors: "Not authorized"}, status: :not_authorized
    end

end
