class Api::ReceiptsController < ApplicationController

  def create
    # data = response.parse
    # total_amount = data["totalAmount"]["data"]
    # date = data["date"]["data"]
    # merchant_name = data["merchantName"]["data"]
    # @receipt = Receipt.new(
    #   totalAmount: total_amount, 
    #   date: date, 
    #   merchantName: merchant_name
    #   )
    # @receipt.save
    # render json: "show.json.jbuilder"
    @receipt = Receipt.new(
      totalAmount: params["totalAmount"], 
      date: params["date"], 
      merchantName: params["merchantName"]
      )
    @receipt.save
    render json: "show.json.jbuilder"
  end 

  def analyze
    response = HTTP
      .headers(apiKey: "b6dac460ef5111e8989bebb60acaaa28")
      .post(
        "https://api.taggun.io/api/receipt/v1/simple/url", 
        form: {url: params[:url]}
      )
    render json: response.parse
  end

  def analyze_file
    uploaded_io = params[:image]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
      pp file
      response = HTTP
        .headers(apiKey: "b6dac460ef5111e8989bebb60acaaa28")
        .post(
          "https://api.taggun.io/api/receipt/v1/simple/file", 
          :form => {
            # :file   => HTTP::FormData::File.new("/Users/johnerler/Desktop/panda express receipt.jpg")
            :file   => HTTP::FormData::File.new(file.path)
          }
        )
      render json: response.parse
    end


  end
end

