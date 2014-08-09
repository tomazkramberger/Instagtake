module InstatakeHelper
	def instatake_refresh_link(action, posts)
		logger.info("TAG: #{action}")
  		if action == "index"
    		link_to 'Load More Posts', instaposts_path(@posts.last.id), :class => 'load-more-posts btn btn-default btn-lg', :remote => true
  		else
    		link_to "Load More Posts for ##{params[:tag]}", instaposts_getbytag_path(:tag => params[:tag], :id => @posts.last.id), :class => 'load-more-posts btn btn-default btn-lg', :remote => true
  		end
  	end
end
