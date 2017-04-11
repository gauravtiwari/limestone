class PagesController < ApplicationController
  # Only redirects elsewhere. This should be removed.
  def index
    if user_signed_in?
      if current_user_subscribed?
        redirect_to dashboard_path
      else
        redirect_to new_subscription_path
      end
    end
  end
end
