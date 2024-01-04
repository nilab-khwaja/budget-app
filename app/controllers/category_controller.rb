class CategoryController < ApplicationController
  def index
    @title = 'Categories'
    @right_el = 'menu'
    @left_el = 'search'
  end
end
