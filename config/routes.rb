Rails.application.routes.draw do
  resources :universities do
    collection do
      get 'search'  # Додаємо маршрут для GET запиту на пошук
      post 'results' # Додаємо маршрут для POST запиту на результати
    end
  end
end
