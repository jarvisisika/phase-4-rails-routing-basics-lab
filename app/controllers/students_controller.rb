class StudentsController < ApplicationController
  def index
   students = Student.all
    render json: students 
  end
  def grades
    @students = Student.all
    grades = @students.pluck(:grade)
    render json: { grades: grades }
  end
def highest_grade
    
    @student = Student.order(grade: :desc).first
    render json: @student
  end
end
