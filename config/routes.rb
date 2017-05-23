Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  # resources :participations, only: [:create], shallow: true

  resources :hunts, only: [:index, :show], shallow: true  do
    member do
      get :play
    end
    resources :checkpoints, only: [] do
      member do
        post :check
        get :next
      end
    end
  end


end

  #
  # Rails.application.routes.draw do
  #   resources :cats, only: %i(index show new create edit update destroy), shallow: true do
  #     resources :bookings, only: %i(create show update) do
  #       patch 'updatestatus', to: 'bookings#updatestatus'
  #       collection do
  #         get 'mycatbookings', to: 'bookings#mycatbookings'
  #       end
  #     end
  #     collection do
  #       get 'mycats', to: 'cats#mycats'
  #     end
  #   end
  #   resources :bookings, only: %i(index show)
  #   devise_for :users, controllers: {
  #     omniauth_callbacks: 'users/omniauth_callbacks'
  #   }
  #   root to: 'pages#home'
  #   mount Attachinary::Engine => '/attachinary'
  # end
