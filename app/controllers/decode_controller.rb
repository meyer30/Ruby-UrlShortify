class DecodeController < ApplicationController
  def show
    baseUrl = "myshorturl.com/"
    base62 = params[:url][baseUrl.length]
    id = toBase10(base62)
    url = Url.find_by(id: id)
    render json: {fullUrl: url.fullLink}, status: 200
  end
  def toBase10(base64Num)
    alphabet = '012345689abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    result = 0
    base = 62
    base64Num.each_char { |curChar| result = result * base + alphabet.index(curChar) }
    result
  end
end
