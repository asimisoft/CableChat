Rails.application.routes.draw do
  # get 'chat_rooms/index'
  #
  # get 'chat_rooms/new'
  #
  # get 'chat_rooms/create'
  #
  # get 'chat_rooms/_chat_room_params'

  devise_for :users

  resources :chat_rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  root 'chat_rooms#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
