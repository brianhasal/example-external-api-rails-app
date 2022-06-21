class ArticlesController < ApplicationController

  def index
    response = HTTP.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=#{Rails.application.credentials.news_api_key}")
    articles = JSON.parse(response.body)["articles"]
    render json: articles
  end

end
