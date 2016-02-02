class SessionsController < ApplicationController
  def new
  end

  def create
  	@dog = Dog.find_by_email(params[:email])
  	if @dog && @dog.authenticate(params[:password])
  		session[:dog_id] = @dog.id	
  		flash[:notice] = "Walked in the doggy door successfully."
  		redirect_to @dog
  	else
  		flash[:alert] = "There was a problem, dog."
  		render 'new'
  	end
  end

  def destroy
    session[:dog_id] = nil
    flash[:notice] = "You've been signed out, dog."
    redirect_to root_path
  end
end
