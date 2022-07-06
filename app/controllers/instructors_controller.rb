class InstructorsController < ApplicationController

    def index 
        render json: Instructor.all 
    end 

    def show 
        render json: instructor 
    end

    def create 
        instructor = Instructor.create( instructor_params )
        render json: instructor, status: :created 
    end

    def destroy 
        instructor.destroy
        head :no_content
    end

    def update 
        instructor.update(instructor_params)
        render json: instructor, status: :accepted
    end 

    private 

    def instructor
        Instructor.find(params[:id])
    end

    def instructor_params
        params.permit(:name)
    end 
end
