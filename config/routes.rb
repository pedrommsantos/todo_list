Rails.application.routes.draw do
  resources :todo_lists do
    member do
      patch :archive_toggle
    end

    collection do
      get :archived
    end

    resources :todo_items do
      member do
       patch :complete
      end
    end
  end
  resources :todo_tags
  root "todo_lists#index"
end