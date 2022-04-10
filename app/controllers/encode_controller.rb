class EncodeController < ApplicationController
  def create
    urlRecord = Url.new(fullLink: params[:url])
    if urlRecord.save
      shortenUrl = "myshorturl.com/" + toBase62(urlRecord.id);
      render json: {shortUrl: shortenUrl}, status: 200
    else
      render json: {error: "Error creating url shorter"}, status: 500
    end
  end
  def toBase62(id)
    s = '012345689abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    hash_str = ''
    while id > 0 do
      hash_str = s[id % 62] + hash_str
      id /= 62
    end
    hash_str
  end
end
