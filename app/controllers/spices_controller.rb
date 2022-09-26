class SpicesController < ApplicationController
    #Get
    def index
        spices = Spice.all
        render json: spices
      end
    #create
      def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
      end

      #show
      def show
        spice = Spice.find_by(id: params[:id])
        render json: spice
      end
    #post
    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
      end
    #destroy
      def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
        head :no_content
      end

      private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end




end
