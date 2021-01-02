Rails.application.routes.draw do

  get 'login' => 'sessions#new'
  post 'lonin' => 'sessios#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  
  root to: 'recruits#index'
  
  resources :teams, only:[:new, :create, :edit, :update]
  resources :recruits do
    resources :requests do
      member do
        patch 'approve'
        patch 'disapprove'
      end
    end
  end
end  
