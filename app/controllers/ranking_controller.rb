class RankingController < ApplicationController
  def home
    @year_monthes = Video.select(:YEAR_MONTH).distinct.order(YEAR_MONTH: :desc)
  end

  def ranking
    year_monthes = Video.select(:YEAR_MONTH).distinct.order(:YEAR_MONTH).pluck(:YEAR_MONTH)
    if params[:ym] && year_monthes.include?(params[:ym])
      @year_month = params[:ym]
      @videos = Video.where(YEAR_MONTH: params[:ym]).order(VIEW_CNT: :desc).first(100)
      #@year_month = @videos[0].YEAR_MONTH
      ym_idx = year_monthes.index(@year_month)
      # 前月の取得
      @pre_month = nil
      if ym_idx != 0
        @pre_month = year_monthes[ym_idx.to_i - 1]
      end
      # 翌月の取得
      @next_month = nil
      if ym_idx != year_monthes.length - 1
        @next_month = year_monthes[ym_idx.to_i + 1]
      end
    else
      redirect_to("/")
    end
  end
end
