class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  def index
    @cats = Cat.all
  end

  def show
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.create(cat_params)
    redirect_to cat_path(@cat)
  end

  def edit
  end

  def update
    @cat.update(cat_params)
  end

  def destroy

    @cat.destroy
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :address, :found_at)
  end

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
