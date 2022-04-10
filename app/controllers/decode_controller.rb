class DecodeController < ApplicationController
  def show
    baseUrl = "myshorturl.com/"
    encodedNum = params[:url][baseUrl.length]

    id = Converter.decode(encodedNum)
    url = Url.find_by(id: id)
    
    render json: {fullUrl: url.fullLink}, status: 200
  end
end
