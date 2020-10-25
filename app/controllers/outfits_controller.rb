class OutfitsController < ApplicationController
    
   before_action :authorized, only: [:create, :destroy]

    def index
        @outfits = Outfit.all
        render json: @outfits
    end


    def create
         @outfit = Outfit.create(outfit_params)
         if @outfit.valid?
              render json: @outfit
         else
              render json: {error: "Please Log-In"}, status: 422
         end
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
