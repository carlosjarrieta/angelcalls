Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'twilio#index'

  post '/call', to: 'twilio#call', as: 'call'
  get '/recargar', to: 'twilio#recargar', as: 'recargar'
  post '/twilio/voice', to: 'twilio#voice', as: 'voice'
  post '/twilio/connect' , as: 'connect'
  post 'twilio/connect_customer' => 'twilio#connect_customer'
end
