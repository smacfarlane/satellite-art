require 'test_helper'

class ArtworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get artworks_url
    assert_response :success
  end

  test "should get new" do
    get new_artwork_url
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post artworks_url, params: { artwork: { image_id: @artwork.image_id, model: @artwork.model, num_iters: @artwork.num_iters, size: @artwork.size, smoothness: @artwork.smoothness, style_id: @artwork.style_id } }
    end

    assert_redirected_to artwork_path(Artwork.last)
  end

  test "should show artwork" do
    get artwork_url(@artwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_artwork_url(@artwork)
    assert_response :success
  end

  test "should update artwork" do
    patch artwork_url(@artwork), params: { artwork: { image_id: @artwork.image_id, model: @artwork.model, num_iters: @artwork.num_iters, size: @artwork.size, smoothness: @artwork.smoothness, style_id: @artwork.style_id } }
    assert_redirected_to artwork_path(@artwork)
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete artwork_url(@artwork)
    end

    assert_redirected_to artworks_path
  end
end
