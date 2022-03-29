class PersonsController < ApplicationController
  def index
    #@persons = Person.all
    @persons = Person.page params[:page]
  end
end
