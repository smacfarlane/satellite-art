class Api::V1::ArtworksController < ApiController
  before_filter :fetch_artwork, only: [:show, :update]

  authorize_resource

  def index
    @artworks = Artwork.all
  end

  def show
  end

  def update
    if @artwork.update_attributes(artwork_params.merge(status: 'finished'))
      head 200, content_type: 'application/json'
    else
      head 503, content_type: 'application/json'
    end
  end

  private
  def fetch_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_params
    params.permit(:image)
  end
end
