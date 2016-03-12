class ProfilesController < ApplicationController
  before_action :profile

  def show
  end

  def new
    @profile = current_user.profile.new
  end 

  def create
    @profile = current_user.profile.new(profile_params)
    if @profile.save
      flash[:notice] = "Profile created successfully."
      redirect_to user_profile_path(current_user, @profile)
    else 
      flash[:alert] = "Profile failed to save."
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      flash[:notice] = 'Profile updated successfully'
      redirect_to user_profile_path(current_user, @profile)
    else
      flash[:alert] = 'Profile failed to update.'
      render :edit
    end
  end

  private
    def profile_params
      params.require(:profile).permit(:bio, :about_me, :profile_pic, :bg_pic, :gender, :age)
    end

    def profile
      @profile = current_user.profile
    end
end
