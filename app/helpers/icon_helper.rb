module IconHelper
  def user_avatar(user, size)
    content = image_tag(avatar_url user, size)
    content_tag :span, content, class: 'user-avatar'
  end

  def avatar_url(user, size)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end
end
