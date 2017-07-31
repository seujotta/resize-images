class ImagesController < ApplicationController
  def index
    page = params[:page] ||= 0
    images_objects = Image.all()

    images_objects.each do |obj|
      aux = {
        small: current_url + obj.file.url(:small),
        medium: current_url + obj.file.url(:medium),
        large: current_url + obj.file.url(:large)
      }

      response_data[:images] << aux
    end

    render json: response_data
  end
end
