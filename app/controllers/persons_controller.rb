class PersonsController < ApplicationController
  def index
    if !params[:search].nil? #if search is not nil
      @persons = Person.search(params[:search]).page(params[:page])
    else
      @persons = Person.page params[:page]
    end
    #@persons = Person.search(params[:search])
  end

  private
    def persons_params
      params.require(:person).permit(:search)
    end
end
