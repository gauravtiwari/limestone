class Users::RegistrationsController < Devise::RegistrationsController
  before_action :set_avatar, only: [:create, :edit, :update]

  protected

    def after_update_path_for(resource)
      edit_user_registration_path
    end

  private

    def set_avatar
      @avatar = resource.avatar || Avatar.new(user_id: resource.id)
    end
end
