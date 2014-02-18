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
    if @program.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])
    @program.update_attributes(program_params)
    if @program.save
      redirect_to @program
    else
      render :edit
    end
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
