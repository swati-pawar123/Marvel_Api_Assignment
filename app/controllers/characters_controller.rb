class CharactersController < ApplicationController
  def index
    # To get list of Characters
    @characters = Character.all.paginate(:page => params[:page], :per_page => 10)
  end
  def show
# To get Character by id

    @character = Marvelservice.character_by_id(params[:id])

    #@character = Character.find(params[:id])

  end
end
