class  UsersController < ApplicationController 
  
  def new
    
  end 
  
  def home 
    
  end 
  
 def create
   @user = User.new(user_params)
   if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      redirect_to new_user_path
    end 
 end
  
  def home 
    
  end
  
   private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end 