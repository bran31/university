class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update]

    def index
        @student = Student.all
    end
    
    def new
        @student = Student.new
    end

    def create 
        @student = Student.new(student_params)
        if @student.save
            flash[:notice] = "You have successfully enrolled!"
            redirect_to @student
        else
            render 'new'
        end
    end

    def show 
        
    end

    def edit 
       
    end

    def update
        
        if @student.update(student_params)
            flash[:notice] = "you have successfully updated your profile"
            redirect_to @student
        else
            render 'edit'
        end
    end

    private

    def set_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:name, :email)
    end


end