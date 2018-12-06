Rails.application.routes.draw do
  root to: 'site#index'
  get '/200', to: 'site#ok_page'
  get '/404', to: 'site#not_found_page'
  get '/500', to: 'site#internal_server_error_page'
end
