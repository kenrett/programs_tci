class ProgramsController < ApplicationController

  def index
    @programs = Program.all
  end

  def show
    @program = Program.find(params[:id])
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.create(program_params)
    redirect_to root_path
  end

  def edit
   
  end

  def destroy
    Program.destroy(params[:id])
    redirect_to root_path
  end

  private

  def program_params
    params.require(:program).permit(:title, :subtitle, :code)
  end
end
