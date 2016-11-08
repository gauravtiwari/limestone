module IconHelper
  def user_avatar(user, size=:sm)
    react_component("AvatarApp", props: {url: user.avatar_url(size)}, prerender: false, html_options: { style: "display:inline-block" })
  end
end
