class RankingController < ApplicationController
  def home
    @year_monthes = Video.select(:YEAR_MONTH).distinct.order(YEAR_MONTH: :desc)
  end

  def ranking
    if params[:ym]
      @videos = Video.where(YEAR_MONTH: params[:ym]).order(VIEW_CNT: :desc).first(100)
    else
      render "home"
    end
  end
end
