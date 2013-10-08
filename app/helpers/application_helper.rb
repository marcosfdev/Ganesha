module ApplicationHelper

def image(current_user)
  if current_user.image.present?
    current_user.image
  else
    default_url = "#{root_url}/avatar.jpg"
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
  end
end
end