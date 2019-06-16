Rails.application.routes.draw do
    resources :classrooms, only: [:index, :show]
    resources :students, except: [:destroy]
end
