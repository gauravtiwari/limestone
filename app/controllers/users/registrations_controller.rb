class Users::RegistrationsController < Devise::RegistrationsController
  def edit
    @avatar = resource.avatar || Avatar.new
    render :edit
  end
end
