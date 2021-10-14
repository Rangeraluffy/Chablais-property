module ApplicationHelper

  def profile_picture account, width = 50
    thumb = account.image.present? ? account.image.thumb.url : ""
    image_tag thumb, with: width, class: "profile-pic img-circle"
  end

end
