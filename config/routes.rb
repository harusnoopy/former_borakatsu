Rails.application.routes.draw do

  root to: "public/homes#top"

  scope module: :public do
    get 'about' => 'homes#about'
    resource :favorites, only: [:create, :destroy]
    get 'favorites' => 'favorites#index'
    resources :organizers, only: [:show]
    resources :participations, only: [:new, :create, :index, :show]
    get 'participations/thanx' => 'participations#thanx', as: 'thanx'
    post 'participations/confirmation' => 'participations#confirmation', as: 'confirmation'
    resource :user, only: [:show, :edit, :update]
    get 'user/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
    patch 'user/withdrawal' => 'users#withdrawal', as: 'withdrawal'
    resources :events, only: [:index, :show]
  end

  namespace :admin do
    resources :participations, only: [:index]
    resources :users, only: [:index, :show, :edit, :update]
    resources :events, except: [:destroy]
    resources :organizers, except: [:destroy]
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
