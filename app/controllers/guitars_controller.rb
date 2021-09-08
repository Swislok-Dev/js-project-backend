class GuitarsController < ApplicationController

  def index
    guitars = Guitar.all
    render json: guitars
  end

  def create
    guitar = Guitar.create(guitar_params)
    render json: guitar
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

  def guitar_params
    params.require(:guitar).permit(:type, :brand, :model, :price, :image_url)
  end
  

end
