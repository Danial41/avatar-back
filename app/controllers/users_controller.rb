class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

    def create
        @user = User.create(user_params)
        if @user.valid?
          # token = encode_token({ user_id: @user.id })
          user_serializer = parse_json @user
          render json: { data: user_serializer}
        else
          render json: { error: @user.errors.full_messages }
        end
    end

    def login
        @user = User.find_by(email: params[:email])
    
        if @user&.authenticate(params[:password])
          token = encode_token({ user_id: @user.id })
          render json: { user: @user, token: token }
        else
          render json: { error:@user.errors }
        end
    end

    def user_params
        params.permit(:fio, :snils, :about_me, :phone_number, :social_media, :email, :competence, :image)
    end
end
