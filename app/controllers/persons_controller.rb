class PersonsController < ApplicationController
  def index
    if !params[:search].nil? #if search is not nil
      result = Person.search(params[:search])
      if result
        @persons = result.page(params[:page])
          @persons
      else #se não achou nenhum resultado
        nil
      end
    else
      @persons = nil
    end
  end

  def list_all
    @persons = Person.page params[:page]
  end

  private
    def persons_params
      params.require(:person).permit(:search)
    end
end
