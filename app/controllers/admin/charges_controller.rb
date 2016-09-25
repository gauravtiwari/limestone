module Admin
  class ChargesController < Admin::ApplicationController
    before_filter :authenticate_user!
  end
end
