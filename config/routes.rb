Rails.application.routes.draw do
  use_doorkeeper

  resource :users
  root 'welcome#index'
end
