class BeverageController < ApplicationController
  before_action :set_beverage, except:[:pour, :index]
  def pour
    @beverage = Beverage.create(bev_params)
  end

  def show
  end

  def index
    @beverages = Beverage.all
  end

  def drink
    @beverage.destroy!
  end

  def mix
    if @beverage.update(bev_params)
      render action: 'show'
    end
  end

  def bev_params
    params.permit(:name, :flavor, :secondary_flavor, :psychic_id)
  end

  def set_beverage
    @beverage = Beverage.find(params[:id])
  end
end
