class PsychicController < ApplicationController
  before_action :set_psychic, except:[:new, :index]

  def new
    @psychic = Psychic.create(psy_params)
  end

  def show
  end

  def index
    @psychics = Psychic.all
  end

  def update
    if @psychic.update(bev_params)
      render action: 'show'
    end
  end

  def see_future
    beverages = Beverage.all
    if beverages.present?
      bev = beverages.first
      render :json => {:prediction => "#{@psychic.name} is having a #{bev.flavor} vision of the future"}
      bev.destroy!
    end
    return
  end

  def cast_spell
    familiars = Familiar.all
    if familiars.present?
      fam = familiars.first
      render :json => {:spell => "With the help of #{fam.name}," +
                    " #{@psychic.name} waves her wand mysteriously"}
    end
    return
  end

  def set_psychic
    @psychic = Psychic.find(params[:id])
  end

  def psy_params
    params.permit(:name, :color)
  end
end
