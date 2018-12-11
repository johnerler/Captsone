class Api::ReceiptsController < ApplicationController

  def create
    response = HTTP
      .headers(apiKey: "b6dac460ef5111e8989bebb60acaaa28")
      .post(
        "https://api.taggun.io/api/receipt/v1/simple/url", 
        form: {url: params[:url]}
      )
    data = response.parse

    render json: response.parse
  end 
end

