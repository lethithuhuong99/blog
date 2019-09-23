Rails.application.routes.draw do
  get 'welcome/index'
  get 'articles/list', to: 'articles#list', as: 'article_list'
  
  resources :articles do
    resources :comments
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


