class CarbonProjectsController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def index
        render json: CarbonProject.all, status: :ok
    end
    
    def create 
        carbon_project = CarbonProject.create!(offsetter_id: User.find(session[:user_id]).offsetters.first.id, no_of_trees: carbon_project_params[:no_of_trees], avarage_age: carbon_project_params[:avarage_age], location: carbon_project_params[:location])
        render json:  carbon_project
    end

    private

    def carbon_project_params
        params.permit(:no_of_trees, :avarage_age, :location)
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def render_record_not_found
        render json: {errors: "Not authorized"}, status: :not_authorized
    end

end
