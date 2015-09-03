class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]

  def index
    @articles = Article.published.includes(:group).order("id DESC").page(params[:page])
  end

  def show
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

end
