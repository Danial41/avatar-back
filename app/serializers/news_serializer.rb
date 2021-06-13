class NewsSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :date_and_time, :image

  def image
    object.image.service_url if object.image.attached?
  end
end
