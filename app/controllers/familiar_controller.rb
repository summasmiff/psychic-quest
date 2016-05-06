class FamiliarController < ApplicationController
  before_action :set_familiar, except:[:new, :index]
  def new
    @familiar = Familiar.create(fam_params)
  end

  def show
  end

  def index
    @familiars = Familiar.all
  end

  def update
    if @familiar.update(fam_params)
      render action: 'show'
    end
  end

  def catchphrase
    render json: "Boy I am having a #{@familiar.personality} day today!"
  end

  def set_familiar
    @familiar = Familiar.find(params[:id])
  end

  def fam_params
    params.permit(:name, :species, :personality, :psychic_id)
  end
end
