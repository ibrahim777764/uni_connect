class UniversitiesController < ApplicationController
  def new
    @university = University.new
  end

  def create
    @university = University.new(university_params)

    if @university.save
      session[:university_id] = @university.id # store the university ID in the session
      redirect_to university_dashboard_path # redirect to the dashboard path
    else
      render :new
    end
  end

  def university_dashboard
    @university = University.find_by(id: session[:university_id]) # retrieve the university from the session

    if @university.nil?
      redirect_to new_university_path # redirect to the registration page if the university is not found
    end
  end

  private

  def university_params
    params.require(:university).permit(:name, :logo, :contact_info, :about)
  end
end
