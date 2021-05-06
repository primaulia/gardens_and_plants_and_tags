# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   resources :gardens, only: %i(:show) do
#     member do
#       get :new_plant
#     end
#     resources :plants, only: [:create]
#   end
# end


Rails.application.routes.draw do
  get 'plant_tags/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens, only: [:show] do
    resources :plants, only: [:new, :create]
  end


  # TODO: routes to tag a plant, how many routes do i need?
end


# GET gardens/:id to the gardens controller -> show action
# GET gardens/:garden_id/plants/new to the plants controller -> new action
# POST gardens/:garden_id/plants to the plants controller -> create action
