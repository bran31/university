class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
    end
    
    def create
        @course = Course.new(courses_params)
        if @course.save
            flash[:notice] = "You have successfully entered a course!"
            redirect_to root_path
        else
            render 'new'
        end
    end



private

    def courses_params
        params.require(:course).permit(:short_name, :name, :description)
    end



end