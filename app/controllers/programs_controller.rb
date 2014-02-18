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

  def edit
   
  end

  def destroy
    Program.destroy(params[:id])
    redirect_to root_path
  end
end
