class LocalSchoolsController < ApplicationController
  def index
    @school = current_user.local_school
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
