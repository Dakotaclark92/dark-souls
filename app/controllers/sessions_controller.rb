class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: :created

    def new
        @user = User.all
    end

    def created
        @user = User.find_or_create_by(name: request.env['omniauth.auth']['info']['name']) do |u|
            u.password = SecureRandom.hex(10)
        end
        session[:user_id] = @user.id
        redirect_to root_path
    
    end


    def create
        @user = User.find_by(name: params[:user][:name])

        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:notice] = "The Bell has not Tolled"
            render :new
        end
    end

    def show
        if sign_in?
            @user = User.find_by(id: params[:id])
        else
            flash[:notice] = "The Bell has not Tolled"
            render :new
        end
    end

    def sign_out
        session.clear
        redirect_to root_path
    end
    

end