Rails.application.routes.draw do
  resources :students do
    get :subjects
  end

  get 'students' => 'students#index'
  get 'teachers' => 'teachers#index'
end
