module PropertiesHelper

  def property_thumbnail property
    img = property.photo.present? ? property.photo.thumb.url : ""
    image_tag img, class: "property-thumb"
  end

  def property_photo_url property
    img = property.photo.present? ? property.photo.url : asset_url("placeholder.png")
  end

end
