class CategoriesController < ApplicationController
  def index
    @categories = @event.categories
  end
end
