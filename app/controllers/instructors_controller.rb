class InstructorsController < ApplicationController
    before_action :curr_instructor, only: [:show, :destroy, :edit, :update]

    def show 
     
    end 

    def new 
      @instructor = Instructor.new
    end

    def create 
      instructor = Instructor.new(instructor_params)
      if instructor.valid? 
        instructor.save
        redirect_to instructor_path(instructor)
      else 
        flash[:errors] = instructor.errors.full_messages
        redirect_to "/instructors/new"
      end 
    end 

    def edit

    end 

    def update
      if @instructor.update(instructor_params)
        redirect_to instructor_path(@instructor)
      else 
        flash[:errors] = @instructor.errors.full_messages
        redirect_to "/instructors/#{@instructor.id}/edit"
      end 
    end 

    def destroy 
      @instructor.destroy
      redirect_to instructors_path
    end

    def curr_instructor 
      @instructor = Instructor.find(params[:id])
    end 
    
    private 
    def instructor_params
      params.require(:instructor).permit(:name)
    end
end
