class Api::V1::ArtworksController < ApplicationController
  before_filter :fetch_artwork, only: [:show, :update]

  def index
    @artworks = Artwork.all
  end

  def show
  end

  def update
    if @artwork.update_attributes(artwork_params)
      head 200, content_type: 'application/json'
    else
      head 503, content_type: 'application/json'
    end
  end

  private
  def fetch_artwork
    @artwork = Artwork.find(params[:id])
  end
end
