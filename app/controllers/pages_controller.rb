class PagesController < ApplicationController
  def index
  end

  def about
    @title = "About Us"
  end

  def contact
    @title = "Contact"
  end

  def template
    @title = "Example Title"
  end
end
