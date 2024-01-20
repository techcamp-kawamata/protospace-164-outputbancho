class PrototypesController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)

    if @prototype.save
      redirect_to root_path
    else
      render :new, stastus: :unprocessable_entity
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image)
  end
end
