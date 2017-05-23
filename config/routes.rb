Rails.application.routes.draw do
  
  root 'page#index'
  
  get 'project/init' => 'reviews#index'
  get 'tents/:id/reviews/new' => 'reviews#new'
  post 'tents/:id/reviews' => 'reviews#create'
  delete 'reviews/:id' => 'reviews#delete'

  get 'tents/:id/like' => 'tents#like'
  
  get 'tents/index'
  post 'tents' => 'tents#create'
  put 'tents/:id' => 'tents#update'
  delete 'tents/:id' => 'tents#delete'
  
  get 'tents/new'
  get 'tents/:id/edit' => 'tents#edit'

end
