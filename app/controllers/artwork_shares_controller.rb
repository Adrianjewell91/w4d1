class ArtworkSharesController < ApplicationController

  def index
    @artwork_shares = ArtworkShare.all
    render json: @artwork_shares
  end

  def create
    @artwork_share = ArtworkShare.new(artwork_share_params)

    if @artwork_share.save!
      render json: @artwork_share
    else
      render @artwork_share.errors.full_messages, status: 422
    end
  end

  def destroy
    @artwork_share = ArtworkShare.find(params[:id])
    @artwork_share.destroy
  end

  private

  def artwork_share_params
    params.require(:artwork_share).permit(:artwork_id,:viewer_id)
  end

end
