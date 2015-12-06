Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  root to: 'visitors#index'

  get 'report/subjects' => 'reports#_subject_item'
  get 'visitors', to: 'visitors#index'
end
