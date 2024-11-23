class CoffeesController < ApplicationController
  def index
    @coffees = Coffee.all
  end

  def show
    @coffee = Coffee.find(params[:id])
  end

  def new
    @coffee = Coffee.new
  end

  def create
    @coffee = Coffee.new(coffee_params)
    if @coffee.save
      redirect_to @coffee, notice: "Coffee was successfully created!"
    else
      render :new
    end
  end

  def edit
    @coffee = Coffee.find(params[:id])
  end

  def update
    @coffee = Coffee.find(params[:id])
    if @coffee.update(coffee_params)
      redirect_to @coffee, notice: "Coffee was successfully updated!"
    else
      render :edit, alert: "Coffee was not updated!"
    end
  end

  def destroy
    @coffee = Coffee.find(params[:id])
    @coffee.destroy
    redirect_to coffees_path, notice: "Coffee was successfully deleted!"
  end

  private

  def coffee_params
    params.require(:coffee).permit(:name, :price, :description, :origin, :roast_level, :stock_quantity, :category_id, :picture)
  end
end
