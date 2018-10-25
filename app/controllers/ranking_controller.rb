class RankingController < ApplicationController
  def home
    @year_monthes = Video.select(:YEAR_MONTH).distinct.order(YEAR_MONTH: :desc)
  end

  def ranking
    if params[:ym] && params[:ym].length == 6
      @videos = Video.where(YEAR_MONTH: params[:ym]).order(VIEW_CNT: :desc).first(100)
      #@year_month = @videos[0].YEAR_MONTH
    else
      redirect_to("/")
    end
  end
end
