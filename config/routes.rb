Rails.application.routes.draw do
  # get 'lists/index'
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new', as: 'new_list'
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: 'list' do
  get root to: "lists#index"
  resources :lists, except: :index do
    resources :bookmarks, only: %i[new create]
    resources :movies
  end
  delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
