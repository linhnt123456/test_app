class StaticPagesController < ApplicationController
  
  def home
#    @entries = Entry.all
  	if signed_in?
      @entry  = current_user.entries.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      
    end
  end
#  def index
#    @entries = Entry.all
#  end
  def help	
  end

  def about
  end

  def contact 	
  end
end
