class NewsController < ApplicationController
    def create
        user = User.find(params[:user])
        news = user.news.create(news_params)

        if news.valid?
            news_serializer = parse_json news
            render json: {success: true, data: news}
        else
            render json: {success: false, error: news.error.full_messages}
        end
    end

    private

    def news_params
        params.permit(:title, :description, :date_and_time, :id, :image)
    end
end
