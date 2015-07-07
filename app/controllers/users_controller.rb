class UsersController < ApplicationController

   def new
      @user = User.new
   end

   def create
      @user = User.new(user_params)
      if @user.save
         session[:user_id] = @user.id
         redirect_to _user_path(@user)
      else
         render 'new'
      end
   end

   def show
      @user = User.find(params[:id])
   end

   def edit
      @user = user.find(params[:id])
   end

   def update
      if @user.update_attributes(user_params)
         flash[:success] = "Your profile was updated."
         redirect_to user_path(@user)
      else
         flash[:danger] = "Something went wrong. Try again."
         render 'edit'
      end
   end

   private
      def user_params
         params.require(:user).permit(:name, :email, :phone, :address)
      end

end
