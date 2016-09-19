class PagesController < ApplicationController
  def index
    if user_signed_in?
      if current_user_subscribed?
        redirect_to action: "subscribed"
      else
        redirect_to new_subscription_path
      end
    end
  end

  def subscribed
  end
end
