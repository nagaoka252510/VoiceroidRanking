Rails.application.routes.draw do
  get 'ranking/', to: 'ranking#ranking'
  get 'ranking/:ym', to: 'ranking#ranking'
  root 'ranking#home'
end
