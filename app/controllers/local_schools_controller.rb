class LocalSchoolsController < ApplicationController
  def index
    @school = current_user.local_school
  end

  def new
  end

  def create
  end

  def edit
    @school = current_user.local_school
  end

  def update
    school = current_user.local_school
    school.assign_attributes(principal_name: params[:principal_name], contact_name: params[:contact_name],
      # change contact_name to contact_number
      # add about attr to local_schools schema
      school_address: params[:school_address], bio: params[:bio])
    school.save
    redirect_to "/local_schools"
  end
end
