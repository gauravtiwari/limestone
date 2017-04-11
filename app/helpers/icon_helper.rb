module IconHelper
  def user_avatar(user, size=:sm)
    image_tag user.avatar_url(size)
  end
end
