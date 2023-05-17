Rails.application.routes.draw do

  root to: "public/homes#top"

  scope module: :public do
    get 'about' => 'homes#about'
    resources :organizers, only: [:show]
    resources :participations, only: [:create, :index, :show, :update]
    post 'participations/confirm' => 'participations#confirm', as: 'confirm'
    resource :user, only: [:show, :edit, :update]
    get 'user/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
    patch 'user/withdrawal' => 'users#withdrawal', as: 'withdrawal'
    resources :events, only: [:index, :show] do
      resource :favorites, only: [:create, :destroy]
    end
    get 'favorites' => 'favorites#index'
  end

  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
    resources :organizers, except: [:destroy]
    resources :events, except: [:destroy] do
      resources :participations, only: [:index]
    end
  end

  devise_scope :user do
    post 'users/guest_sign_in' => 'public/sessions#guest_sign_in', as: 'guest_sign_in'
  end

  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
