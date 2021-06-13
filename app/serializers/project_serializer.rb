class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :user, :option, :image, :description

  def image
    object.image.service_url if object.image.attached?
  end
end
