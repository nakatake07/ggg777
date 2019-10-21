Rails.application.routes.draw do


  root :to => 'room#top'

  #get 'books/:id/edit' => 'books#edit'

  patch 'books/:id'=>'books#update', as: 'update_book'
 delete 'books/:id' => 'books#destroy', as:'destroy_book'
 get 'books' => 'books#index'
 get 'books/:id' => 'books#show', as: 'book'
 get 'books/:id/edit' => 'books#edit', as: 'edit_book'
 post 'books' => 'books#create'


end