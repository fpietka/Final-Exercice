Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    collection do
      get 'next_day'
    end  
  end
end
