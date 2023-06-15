resources :users, only: [:show] do
  resources :direct_messages, only: [:new, :create, :show]
  member do
    get :cookies_consent
  end
end
