class UsersController < ApplicationController

    def index
        @users=User.all
    end

    def show
        @user=User.find(params[:id])
    end

    def new
        @user=User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :new, status: 422
        end
    end

    def edit
        @user=User.find(params[:id])
    end

    def update
        @user=User.find(params[:id])
        @user.update(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :edit, status: 422
        end
    end

    def destroy
        @user=User.find(params[:id])
        @user.destroy
        redirect_to users_path(@user)
    end

    private

    def user_params
        params
        .require(:user)
        .permit(:first_name, :last_name, :email, :state, :city, :score)
    end
end
