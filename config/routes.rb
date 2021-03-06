Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "recipes#index"
  # Routes for the Favorite resource:

  # CREATE
  get("/favorites/new", { :controller => "favorites", :action => "new_form" })
  post("/create_favorite", { :controller => "favorites", :action => "create_row" })
  post("/create_favorite_from_category", { :controller => "favorites", :action => "create_row_from_category" })

  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  get("/favorites/:id_to_display", { :controller => "favorites", :action => "show" })

  # UPDATE
  get("/favorites/:prefill_with_id/edit", { :controller => "favorites", :action => "edit_form" })
  post("/update_favorite/:id_to_modify", { :controller => "favorites", :action => "update_row" })

  # DELETE
  get("/delete_favorite/:id_to_remove", { :controller => "favorites", :action => "destroy_row" })
  get("/delete_favorite_from_food/:id_to_remove", { :controller => "favorites", :action => "destroy_row_from_food" })
  get("/delete_favorite_from_user/:id_to_remove", { :controller => "favorites", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Preparation resource:

  # CREATE
  get("/preparations/new", { :controller => "preparations", :action => "new_form" })
  post("/create_preparation", { :controller => "preparations", :action => "create_row" })

  # READ
  get("/preparations", { :controller => "preparations", :action => "index" })
  get("/preparations/:id_to_display", { :controller => "preparations", :action => "show" })

  # UPDATE
  get("/preparations/:prefill_with_id/edit", { :controller => "preparations", :action => "edit_form" })
  post("/update_preparation/:id_to_modify", { :controller => "preparations", :action => "update_row" })

  # DELETE
  get("/delete_preparation/:id_to_remove", { :controller => "preparations", :action => "destroy_row" })

  #------------------------------

  # Routes for the Cuisine resource:

  # CREATE
  get("/cuisines/new", { :controller => "cuisines", :action => "new_form" })
  post("/create_cuisine", { :controller => "cuisines", :action => "create_row" })

  # READ
  get("/cuisines", { :controller => "cuisines", :action => "index" })
  get("/cuisines/:id_to_display", { :controller => "cuisines", :action => "show" })

  # UPDATE
  get("/cuisines/:prefill_with_id/edit", { :controller => "cuisines", :action => "edit_form" })
  post("/update_cuisine/:id_to_modify", { :controller => "cuisines", :action => "update_row" })

  # DELETE
  get("/delete_cuisine/:id_to_remove", { :controller => "cuisines", :action => "destroy_row" })

  #------------------------------

  # Routes for the Recipe resource:

  # CREATE
  get("/recipes/new", { :controller => "recipes", :action => "new_form" })
  post("/create_recipe", { :controller => "recipes", :action => "create_row" })
  post("/create_recipe_from_category", { :controller => "recipes", :action => "create_row_from_category" })
  post("/create_recipe_from_preparation", { :controller => "recipes", :action => "create_row_from_preparation" })
  post("/create_recipe_from_cuisine", { :controller => "recipes", :action => "create_row_from_cuisine" })

  # READ
  get("/recipes", { :controller => "recipes", :action => "index" })
  get("/recipes/:id_to_display", { :controller => "recipes", :action => "show" })

  # UPDATE
  get("/recipes/:prefill_with_id/edit", { :controller => "recipes", :action => "edit_form" })
  post("/update_recipe/:id_to_modify", { :controller => "recipes", :action => "update_row" })

  # DELETE
  get("/delete_recipe/:id_to_remove", { :controller => "recipes", :action => "destroy_row" })
  get("/delete_recipe_from_food/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_food" })
  get("/delete_recipe_from_preparation/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_preparation" })
  get("/delete_recipe_from_cuisine/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_cuisine" })
  get("/delete_recipe_from_user/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_user" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
