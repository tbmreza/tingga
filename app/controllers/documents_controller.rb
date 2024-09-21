class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  # def create
  #   @document = Document.new(document_params)
  #   if @document.save
  #     # redirect_to @document
  #     redirect_to root_path
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end
  def create
    d = Document.create!(document_params)
    redirect_to root_path
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to root_path, status: :see_other
  end

  private
   def document_params
     params.require(:document).permit(:title, :summary, :digital)
   end
end
