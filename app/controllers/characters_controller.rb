class CharactersController < ApplicationController

    before_action :authorized, only: [:update]

    def index
        @characters = Character.all
        render json: @characters
    end


    def update
        @character = Character.find(params[:id])
        @character.update(character_params)
        render json: @character
    end


    private
    def character_params
        params.permit(:id, :name, :age, :gender, :occupation, :lovePoint, :favorite, :bio, :imageURL)
    end

end
