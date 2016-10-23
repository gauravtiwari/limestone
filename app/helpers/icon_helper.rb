module IconHelper
  def user_avatar(user, size=:sm)
    image = image_tag(user.avatar_url(size), size: Avatar.sizes[size])
    content_tag :span, image, class: 'user-avatar'
  end
end
