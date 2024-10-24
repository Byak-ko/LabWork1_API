Rails.application.routes.draw do
  root "universities#index"

  resources :universities do
    collection do
      get "search"
      post "results"
    end
  end
end
