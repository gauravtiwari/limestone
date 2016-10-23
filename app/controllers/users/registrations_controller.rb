class Users::RegistrationsController < Devise::RegistrationsController
  def new
  end

  def create
  end

  def edit
    @avatar = resource.avatar || Avatar.new
    render :edit
  end

  def destroy
  end
end
