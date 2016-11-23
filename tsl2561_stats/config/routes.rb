Rails.application.routes.draw do
  get '/', to: 'static_pages#home'
  get '/realtime', to: 'static_pages#realtime'

  get '/static_pages/home'
  get '/static_pages/realtime'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
