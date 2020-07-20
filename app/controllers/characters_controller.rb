class CharactersController < ApplicationController
    before_action :set_character, only: [:show, :edit, :update, :destroy]

    def index
        @character = Character.all
    end

    def show
    end

    def new
        @character = Character.new
    end

    def create
        character = Character.new(character_params)
        if character.save
            redirect_to character_path(character)
        else
            render :new
        end
    end

    def edit

    end

    def update
        if @character.update(character_params)
            redirect_to character_path(@character)
        else
            render :edit
        end
    end

    private

    def character_params
        params.require(:character).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets, :id)
    end

    def set_character
        @character = Character.find_by_id(params[:id])
    end


end