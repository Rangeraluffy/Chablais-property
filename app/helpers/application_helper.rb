module ApplicationHelper

  def profile_picture account
    thumb = account.image.present? ? account.image.thumb.url : ""
    image_tag thumb, class: "profile-pic img-circle"
  end
end
