class InstatakeController < ApplicationController
  before_action :authenticate_user!

  def index
  	@posts = Instagram.user_media_feed({ max_id: params[:id], count: 6} )

  	respond_to do |format|
		  format.html
		  format.js # add this line for your js template
	  end
  end

  def getbytag
    @posts = Instagram.tag_recent_media(params[:tag], { max_id: params[:id], count: 6})

    respond_to do |format|
      format.html { render :template => "instatake/index" }
      format.js { render :template => "instatake/index" }
    end
  end

  def download
    @media = Instagram.media_item(params[:id])

  	require 'open-uri'
	  url = @media.images
	  data = open(@media.images.standard_resolution.url).read
	  send_data data, :disposition => 'attachment', :filename=>"instagram_#{@media.id}.jpg"
  end

  def search
    unless params[:search].nil?
      if params[:search][:text].include? "#"
        hashtag = params[:search][:text]
        hashtag.slice! "#"

        @hashtags = Instagram.tag_search(hashtag)
      else
        @users = Instagram.user_search(params[:search][:text])
      end
    end
    respond_to do |format|
      format.html
      format.js # add this line for your js template
    end
  end

end
