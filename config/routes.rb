Rails.application.routes.draw do
  namespace :public do
    get 'organizers/show'
  end
  namespace :public do
    get 'participations/new'
    get 'participations/confirmation'
    get 'participations/thanx'
    get 'participations/index'
    get 'participations/show'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/unsubscribe'
  end
  namespace :public do
    get 'events/index'
    get 'events/show'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :admin do
    get '' => 'homes#top'
    resources :participations, only: [:index]
    resources :users, only: [:index, :show, :edit, :update]
    resources :events, only: [:new, :create, :show, :edit, :update]
    resources :organizers, except: [:destroy]
  end
  
devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
