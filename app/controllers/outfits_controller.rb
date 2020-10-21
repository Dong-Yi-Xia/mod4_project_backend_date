class OutfitsController < ApplicationController
    
    def index
        @outfits = Outfit.all
        render json: @outfits
    end


    def create
         @outfit = Outfit.create(outfit_params)
         render json: @outfit
    end


    def destroy
      @outfit = Outfit.find(params[:id])
      @outfit.destroy
      render json: @outfit
    end 


    
    private

    def outfit_params
      params.permit(:outfitname, :headwear, :topwear, :bottomwear, :shoe, :accessories, :user_id)
    end

end
