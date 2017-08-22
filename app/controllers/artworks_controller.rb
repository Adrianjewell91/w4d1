class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    render json: @artworks
  end

  def create
    @artwork = Artwork.create(artwork_params)

    if @artwork.save! #actually runs it.
      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: 422
    end

  end

  def show
    @artwork = Artwork.find(params[:id])

    if @artwork
      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: 422
    end

  end

  def update
    @artwork = Artwork.find(params[:id])

    if @artwork.update_attributes(artwork_params)
        render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: 422
    end

  end

  def destroy
    @artwork = Artwork.find(params[:id])

    if @artwork.destroy
      render plain: "DESTROYED SDL:FKJSDF:LKSDJF:KLSDJFDS:KLFJDL:FSJ:KLD:KFLJSD"
    else
      render json: @artwork.errors.full_messages, status: 422
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
