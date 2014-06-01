module ApplicationHelper
  def photo_for(post)
    image_tag post.photo.url if post.photo?
  end

  def video_for(post)
    video_tag(post.image.url, controls: true, autobuffer: true) if post.image?
  end
end
