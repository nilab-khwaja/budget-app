class CategorysController < ApplicationController
  def index
    @title = 'Categories'
    @right_el = 'menu'
    @left_el = 'search'
  end

  def show
    render 'show'
  end

  def new; end
end
