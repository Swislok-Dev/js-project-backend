class GuitarsController < ApplicationController

  before_action :get_guitar, only: [:destroy]

  def index
    guitars = Guitar.all
    if guitars
      render json: guitars
    else
      render json: { message: "No guitars found" }
    end
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

  def destroy
    @guitar.destroy
    render json: {message: "Guitar has been deleted"}
  end

  private

  def get_guitar
    @guitar = Guitar.find_by(id: params[:id])
  end

  def guitar_params
    params.require(:guitar).permit(:style, :brand, :model, :image_url, :user_id)
  end
  

end
