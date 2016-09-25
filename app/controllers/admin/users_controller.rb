module Admin
  class UsersController < Admin::ApplicationController
    before_filter :authenticate_user!

    # def index
    #   super
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   User.find_by!(slug: param)
    # end
  end
end
