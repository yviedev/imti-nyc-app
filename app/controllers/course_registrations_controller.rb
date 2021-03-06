class CourseRegistrationsController < ApplicationController

	def new
		@courses = Course.all
		@course_registration = CourseRegistration.new
	end

	def create
		course_registration = CourseRegistration.new(course_registration_params)
		@amount = Course.find(course_registration_params[:course_id]).price
		render 'charges/new.html.erb'
	end

	def course_registration_params
		params.require(:course_registration).permit(:course_id).merge(user_id: current_user.id)
	end
end
