class NewsController < ApplicationController

    def index
        news = News.all

        if news
            news_serializer = parse_json news
            render json: {success: true, data: news_serializer}
        else
            render json: {success: false, error: news.error.full_messages}
        end
    end

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
        params.permit(:title, :description, :date_and_time, :user, :image)
    end
end
