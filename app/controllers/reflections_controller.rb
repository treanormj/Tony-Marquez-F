class ReflectionsController < ApplicationController

  def new
    @reflection = Reflection.new
  end

  def create
    @reflection = Reflection.new(reflection_params)
  end

  def index
    @reflections = Reflection.all
  end

  def show
    @reflection = Reflection.find(params[:id])
  end

  def destroy
    @reflection = Reflection.find(params[:id])
    @reflection.destroy
    redirect_to reflections_url, notice: 'Comment was successfully deleted.'
  end

  # this reduces any junk in our submissions. It keeps it with title and description. They could mess things up with curl requests.
    private
      def reflection_params
        # params.require(:name).permit(:relationship, :thoughts)
        params.require(:reflection).permit(:name, :relationship, :thoughts)
      end

end
