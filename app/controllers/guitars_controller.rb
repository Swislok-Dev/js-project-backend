class GuitarsController < ApplicationController

  def index
    guitars = Guitar.all
    render json: guitars
  end

  def create
    guitar = Guitar.new(guitar_params)
  end

  def show
    guitar = Guitar.find_by(id: params[:id])
    if guitar
      render json: guitar
    else
      render json: { message: "No guitars found" }
    end
  end

  private

  def guitar_parms
    params.require(:guitar).permit(:brand, :model, :price)
  end
  

end
