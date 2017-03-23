class PagesController < ApplicationController
  def index
  end

  def about
  	@title = "About Us"
  end

  def contact
  	@title = "Contact"
  end
end
