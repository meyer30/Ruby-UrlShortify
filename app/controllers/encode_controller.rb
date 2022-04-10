class EncodeController < ApplicationController
  def create
    urlRecord = Url.new(fullLink: params[:url])
    if urlRecord.save
      shortenUrl = "myshorturl.com/" + Converter.encode(urlRecord.id);
      render json: {shortUrl: shortenUrl}, status: 200
    else
      render json: {error: "Error creating url shorter"}, status: 500
    end
  end
end
