class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :fio, :snils, :about_me, :phone_number, :social_media, :email, :competence, :image

  def image
    object.image.service_url if object.image.attached?
  end
end
