class PreparationsController < ApplicationController
  def index
    @preparations = Preparation.all

    render("preparation_templates/index.html.erb")
  end

  def show
    @preparation = Preparation.find(params.fetch("id_to_display"))

    render("preparation_templates/show.html.erb")
  end

  def new_form
    @preparation = Preparation.new

    render("preparation_templates/new_form.html.erb")
  end

  def create_row
    @preparation = Preparation.new

    @preparation.name = params.fetch("name")

    if @preparation.valid?
      @preparation.save

      redirect_back(:fallback_location => "/preparations", :notice => "Preparation created successfully.")
    else
      render("preparation_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @preparation = Preparation.find(params.fetch("prefill_with_id"))

    render("preparation_templates/edit_form.html.erb")
  end

  def update_row
    @preparation = Preparation.find(params.fetch("id_to_modify"))

    @preparation.name = params.fetch("name")

    if @preparation.valid?
      @preparation.save

      redirect_to("/preparations/#{@preparation.id}", :notice => "Preparation updated successfully.")
    else
      render("preparation_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @preparation = Preparation.find(params.fetch("id_to_remove"))

    @preparation.destroy

    redirect_to("/preparations", :notice => "Preparation deleted successfully.")
  end
end
