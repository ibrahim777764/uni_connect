class RegistrationsController < ApplicationController
    def new_student
      @student = Student.new
    end
  
    def new_university
      @university = University.new
    end
  end