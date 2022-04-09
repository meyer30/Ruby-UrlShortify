class DecodeController < ApplicationController
  def show
    temp = params[:url]
    render json: temp, status: 200
  end
end
