class HomeController < ApplicationController
  def guestfeed
    redirect_to action: "newest"
  end

  def newest
    @a= Album.order(created_at: :desc).limit(4)
    @c=0
    render 'newest'
  end
end
