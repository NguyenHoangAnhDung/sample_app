module UsersHelper
  def avatar_for user
    avatar_id = Digest::MD5::hexdigest user.email.downcase
    avatar_url = "#{Settings.avatar_url}/#{avatar_id}"
    image_tag avatar_url, alt: user.name, class: "gravatar"
  end
end
