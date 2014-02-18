class ProgramsController < ApplicationController
  before_filter :get_program, only: [:edit, :update, :show]

  def index
    @programs = Program.all
  end

  def show
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.create(program_params)
    if @program.save
      flash[:notice] = 'Program created successfully'
      redirect_to root_path
    else
      render :new 
    end
  end

  def edit
  end

  def update
    if @program.update_attributes(program_params) #handle errors
      flash[:notice] = 'Program updated successfully'
      redirect_to @program
    else
      render :edit 
    end
  end

  def destroy
    Program.destroy(params[:id])
    flash[:notice] = 'Program destroyed'
    redirect_to root_path
  end

  private

  def program_params
    params.require(:program).permit(:title, :subtitle, :code)
  end

  def get_program
    @program = Program.find_by(id: params[:id])
    not_found unless @program
  end
end
