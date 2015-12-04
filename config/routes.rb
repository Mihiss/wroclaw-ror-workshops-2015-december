Rails.application.routes.draw do
  resources :students do
    get :subjects
  end

  get 'students' => 'students#index'
  get 'teachers' => 'teachers#index'
  get 'report/subjects' => 'reports#_subject_item'
end
