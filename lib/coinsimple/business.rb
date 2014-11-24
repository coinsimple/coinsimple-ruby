require "hashit"
require "http"
require "json"

module Coinsimple
  class Business
    NEW_INVOICE_URL = "https://app.coinsimple.com/api/v1/invoice"

    def initialize business_id , api_key
      @api_key=api_key
      @business_id=business_id
    end

    def send_invoice invoice
      options=invoice.data
      options[:business_id]=@business_id
      timestamp=Time.now.to_i
      hash=Hashit.sha256(timestamp,@api_key)[3..-1]
      options[:timestamp]=timestamp
      options[:hash]=hash

      res = HTTP.post NEW_INVOICE_URL, json: options
      if res.status >= 400
        {"status" => "error" , "error" => "error creating invoice"}
      else
        JSON.parse res.to_s
      end
    end


  end
end
