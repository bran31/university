class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def new
        @courses = Course.new
    end
    
    def create
        @courses = Course.new(courses_params)
        if @courses.save
            flash[:notice] = "You have successfully entered a course!"
            redirect_to root_path
        else
            render 'new'
        end
    end



private

def courses_params
    params.require(:courses).permit(:short_name, :name, :description)
end



end