class GuitarsController < ApplicationController

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
    guitar = Guitar.find_by(id: params[:id])
    guitar.destroy
    render json: {message: "Guitar has been deleted"}
  end

  private

  def guitar_params
    params.require(:guitar).permit(:style, :brand, :model, :image_url, :user_id)
  end
  

end
