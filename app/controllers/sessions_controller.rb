class SessionsController < ApplicationController

    def create
        user = User.find_by(email: login_params[:email])
        if user&.authenticate(login_params[:password])
            session[:user_id] = user.id
            render json: {user: user, session: session}, status: :created
        else
            render json: {error: "You have entered a wrong email or password" }
        end
    end

    def destroy
        session.delete(:user_id)
        render json: {logout: true}, status: :no_content
    end

    private

    def login_params
        params.permit(:email, :password)
    end

end
