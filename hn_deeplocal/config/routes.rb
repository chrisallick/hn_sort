HnDeeplocal::Application.routes.draw do
  get "welcome/index"

  root 'welcome#index'

  get 'sort/comments/' => 'sort#comments'
  get 'sort/headline-length/' => 'sort#headline'
  get 'sort/domain/' => 'sort#domain'
end
