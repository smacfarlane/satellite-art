class ApiKeysController < ApplicationController
  before_action :set_api_key, only: [:show, :edit, :update, :destroy]

  authorize_resource
  # GET /api_keys
  # GET /api_keys.json
  def index
    @api_keys = ApiKey.all
  end

  # POST /api_keys
  # POST /api_keys.json
  def create
    @api_key = ApiKey.new(token: ApiKey.generate_token!)

    respond_to do |format|
      if @api_key.save
        format.html { redirect_to api_keys_url, notice: 'Api key was successfully created.' }
      else
        format.html { render :index, notice: "Unable to generate token" }
      end
    end
  end
  # DELETE /api_keys/1
  # DELETE /api_keys/1.json
  def destroy
    @api_key.destroy
    respond_to do |format|
      format.html { redirect_to api_keys_url, notice: 'Api key was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_key
      @api_key = ApiKey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_key_params
      params.require(:api_key).permit(:token, :enabled)
    end
end
