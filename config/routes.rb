BooherLife::Application.routes.draw do
  resources :journal_entries

  resources :workouts

  resources :stressors

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
