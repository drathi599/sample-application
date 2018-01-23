module UsersHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = {size: 50})
    size = options[:size]
    # we are using hexdigest method of Digest library and MD5 is a hashing algorithm
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    # image tag is gravatar with a CSS class is returned
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
