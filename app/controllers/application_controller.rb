class ApplicationController < ActionController::Base
  after_action :allow_iframe

  private
  def allow_iframe
    # X-Frame-Oprions設定
    response.headers["X-Frame-Options"] = "ALLOW-FROM http://voiran.ml"
  end
end
