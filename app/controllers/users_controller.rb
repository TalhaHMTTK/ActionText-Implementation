class UsersController < ApplicationController 
    
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:name, :notes, :department_id))
        @user.save
        redirect_to @user
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(params.require(:user).permit(:name, :notes, :department_id))
        redirect_to @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end
end
