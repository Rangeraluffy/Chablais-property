module PostsHelper

  def post_thumbnail_url post
    post.image.present? ? post.image.thumb: "placeholder.png"
  end
end
