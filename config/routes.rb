BooherLife::Application.routes.draw do

  resources :saving_goals

  get "journal_entries/analysis"
  get "journal_entries/journal_entry_data"

  resources :journal_entries

  resources :workouts

  resources :stressors do
    resources :next_steps
  end

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"

  devise_for :users

  resources :users, :only => [:show, :index]

end
