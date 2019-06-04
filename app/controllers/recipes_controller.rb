class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    render("recipe_templates/index.html.erb")
  end

  def show
    @recipe = Recipe.find(params.fetch("id_to_display"))

    render("recipe_templates/show.html.erb")
  end

  def new_form
    @recipe = Recipe.new

    render("recipe_templates/new_form.html.erb")
  end

  def create_row
    @recipe = Recipe.new

    @recipe.link = params.fetch("link")
    @recipe.cuisine_id = params.fetch("cuisine_id")
    @recipe.preparation_id = params.fetch("preparation_id")
    @recipe.cook_time = params.fetch("cook_time")
    @recipe.food_id = params.fetch("food_id")
    @recipe.user_id = params.fetch("user_id")

    if @recipe.valid?
      @recipe.save

      redirect_back(:fallback_location => "/recipes", :notice => "Recipe created successfully.")
    else
      render("recipe_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_cuisine
    @recipe = Recipe.new

    @recipe.link = params.fetch("link")
    @recipe.cuisine_id = params.fetch("cuisine_id")
    @recipe.preparation_id = params.fetch("preparation_id")
    @recipe.cook_time = params.fetch("cook_time")
    @recipe.food_id = params.fetch("food_id")
    @recipe.user_id = params.fetch("user_id")

    if @recipe.valid?
      @recipe.save

      redirect_to("/cuisines/#{@recipe.cuisine_id}", notice: "Recipe created successfully.")
    else
      render("recipe_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_preparation
    @recipe = Recipe.new

    @recipe.link = params.fetch("link")
    @recipe.cuisine_id = params.fetch("cuisine_id")
    @recipe.preparation_id = params.fetch("preparation_id")
    @recipe.cook_time = params.fetch("cook_time")
    @recipe.food_id = params.fetch("food_id")
    @recipe.user_id = params.fetch("user_id")

    if @recipe.valid?
      @recipe.save

      redirect_to("/preparations/#{@recipe.preparation_id}", notice: "Recipe created successfully.")
    else
      render("recipe_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_category
    @recipe = Recipe.new

    @recipe.link = params.fetch("link")
    @recipe.cuisine_id = params.fetch("cuisine_id")
    @recipe.preparation_id = params.fetch("preparation_id")
    @recipe.cook_time = params.fetch("cook_time")
    @recipe.food_id = params.fetch("food_id")
    @recipe.user_id = params.fetch("user_id")

    if @recipe.valid?
      @recipe.save

      redirect_to("/categories/#{@recipe.food_id}", notice: "Recipe created successfully.")
    else
      render("recipe_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @recipe = Recipe.find(params.fetch("prefill_with_id"))

    render("recipe_templates/edit_form.html.erb")
  end

  def update_row
    @recipe = Recipe.find(params.fetch("id_to_modify"))

    @recipe.link = params.fetch("link")
    @recipe.cuisine_id = params.fetch("cuisine_id")
    @recipe.preparation_id = params.fetch("preparation_id")
    @recipe.cook_time = params.fetch("cook_time")
    @recipe.food_id = params.fetch("food_id")
    @recipe.user_id = params.fetch("user_id")

    if @recipe.valid?
      @recipe.save

      redirect_to("/recipes/#{@recipe.id}", :notice => "Recipe updated successfully.")
    else
      render("recipe_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @recipe = Recipe.find(params.fetch("id_to_remove"))

    @recipe.destroy

    redirect_to("/users/#{@recipe.user_id}", notice: "Recipe deleted successfully.")
  end

  def destroy_row_from_cuisine
    @recipe = Recipe.find(params.fetch("id_to_remove"))

    @recipe.destroy

    redirect_to("/cuisines/#{@recipe.cuisine_id}", notice: "Recipe deleted successfully.")
  end

  def destroy_row_from_preparation
    @recipe = Recipe.find(params.fetch("id_to_remove"))

    @recipe.destroy

    redirect_to("/preparations/#{@recipe.preparation_id}", notice: "Recipe deleted successfully.")
  end

  def destroy_row_from_food
    @recipe = Recipe.find(params.fetch("id_to_remove"))

    @recipe.destroy

    redirect_to("/categories/#{@recipe.food_id}", notice: "Recipe deleted successfully.")
  end

  def destroy_row
    @recipe = Recipe.find(params.fetch("id_to_remove"))

    @recipe.destroy

    redirect_to("/recipes", :notice => "Recipe deleted successfully.")
  end
end
