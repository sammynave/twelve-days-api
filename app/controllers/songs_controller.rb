class SongsController < ApplicationController
  def index
    render json: Song.all
  end

  def show
    render json: Song.find(params.require(:id))
  end

  def create
    song = Song.new(create_params)

    if song.save
      render json: song
    else
      render json: song, serializer: ActiveModel::Serializer::ErrorSerializer, status: :unprocessable_entity
    end
  end

  private

  def create_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(
      params,
      only: [:name, :lyrics, :audio]
    )
  end
end
