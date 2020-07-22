module Api 
  module V1  
    class AnimalsController < ApplicationController

      def index
        @animals = Animal.page(params[:page]).per(100)
        json_response(@animals)
      end

      def new_faces
        @animals = Animal.new_faces
        json_response(@animals)
      end

      def show
        @animal = Animal.find(params[:id])
        json_response(@animal)
      end

      def create
        @animal = Animal.create!(animal_params)
        json_response(@animal, :created)
      end
      
      def update
        @animal = Animal.find(params[:id])
        if @animal.update!(animal_params)
          render status: 200, json: {
            message: "This animal has been updated successfully"
          }
        end
      end

      def destroy
        @animal = Animal.find(params[:id])
        @animal.destroy
          render status: 200, json: {
            message: "This animal has been deleted successfully"
          }
      end

      def random
        @animal = Animal.all.sample
        json_response(@animal)
      end

      def search
        kind = params[:kind]
        @animals = Animal.search(kind)
        if kind == 'dog' || kind == 'cat'
          json_response(@animals)
        else
          render status: 200, json: {
            message: "We have meows and woofs only"
          }
        end
      end

      private
      def animal_params
        params.permit(:kind, :name, :age, :breed, :imgUrl)
      end
    end

  end
end