require "httparty"

class CliCrypto::Api
    def fetch
        # go make a fetch to the API for bitcoin data
        response_btc = HTTParty.get("https://api.cryptonator.com/api/ticker/btc-usd")
        response_ltc = HTTParty.get("https://api.cryptonator.com/api/ticker/ltc-usd")
        response_doge = HTTParty.get("https://api.cryptonator.com/api/ticker/doge-usd")
        response_etc = HTTParty.get("https://api.cryptonator.com/api/ticker/etc-usd")
        
        # put the bitcoin data in the hash
        hash = {}
        fill_hash_with_response("Bitcoin", response_btc, hash)
        fill_hash_with_response("Litecoin", response_ltc, hash)
        fill_hash_with_response("Dogecoin", response_doge, hash)
        fill_hash_with_response("Ethereum", response_etc, hash)

        return hash
    end

    def fill_hash_with_response(crypto, response, hash)
        hash[crypto] = {
            "price" => response["ticker"]["price"],
            "%change" => response["ticker"]["change"],
            "current volume" => response["ticker"]["volume"]
        }
    end
end




















 # {
        #     "Bitcoin" => {
        #         "price" => response["ticker"]["price"],
        #         "%change" => response["ticker"]["change"],
        #         "previous" => response["ticker"]["volume"]
        #     },
        #     "Litecoin" => {
        #         "price" => response_ltc["ticker"]["price"], 
        #         "%change" => response_ltc["ticker"]["change"], 
        #         "previous" => response_ltc["ticker"]["volume"]
        #     },
        #     "Dogecoin" => {
        #         "price" => response_doge["ticker"]["price"], 
        #         "%change" => response_doge["ticker"]["change"], 
        #         "previous" => response_doge["ticker"]["volume"]
        #     },
        #     "Ethereum" => {
        #         "price" => response_etc["ticker"]["price"], 
        #         "%change" => response_etc["ticker"]["change"], 
        #         "previous" => response_etc["ticker"]["volume"]
        #     }
        # }