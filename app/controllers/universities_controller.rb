class UniversitiesController < ApplicationController
  def index
    @universities = University.all
  end

  def new
    @university = University.new
  end

  def create
    @university = University.new(university_params)
    if @university.save
      flash[:success] = "University created successfully!"
      redirect_to universities_path
    else
      render 'new'
    end
  end

  private

  def university_params
    params.require(:university).permit(:name, :logo, :contact_info, :about)
  end
end

def create
  @university = University.new(university_params)
  if params[:university][:logo].present?
    @university.logo.attach(params[:university][:logo])
  end
  if @university.save
    redirect_to @university
  else
    render 'new'
  end
end

