class StudentsController < ApplicationController

    before_action :curr_student, only: [:show, :destroy, :edit, :update]

    def show 
     
    end 

    def new 
      @student = Student.new
    end

    def create 
      student = Student.new(student_params)
      if student.valid? 
        student.save
        redirect_to student_path(student)
      else 
        flash[:errors] = student.errors.full_messages
        redirect_to "/students/new"
      end 
    end 

    def edit

    end 

    def update
      if @student.update(student_params)
        redirect_to student_path(@student)
      else 
        flash[:errors] = @student.errors.full_messages
        redirect_to "/students/#{@student.id}/edit"
      end 
    end 

    def destroy 
      @student.destroy
      redirect_to students_path
    end

    def curr_student 
      @student = Student.find(params[:id])
    end 
    
    private 
    def student_params
      params.require(:student).permit(:name, :age, :major)
    end
end
