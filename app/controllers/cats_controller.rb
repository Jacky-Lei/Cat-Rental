class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new({name: nil, color: nil, description: nil, sex: nil,
      birth_date: nil})
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cat_url(@cat)
    else
      fail
    end
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to cat_url(@cat)
    else
      fail
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :color, :description, :birth_date, :sex)
  end

  def age
    @cat = cat.find(params[:id])
    age = Time.now - @cat.birth_date
  end
end
