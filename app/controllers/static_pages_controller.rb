class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    @photos = []
    user_id = search_params[:user_id]
    if search_params[:user_id].present?
      flickr = Flickr.new
      @photos = flickr.people.getPublicPhotos :user_id => user_id, :extras => 'url_t', :format => 'json'
    end
  end

  private

    def search_params
      params.permit(:user_id, :commit, :photos)
    end
end
