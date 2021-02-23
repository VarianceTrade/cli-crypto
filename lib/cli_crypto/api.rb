
class CliCrypto::Api
    def fetch
        # go make a fetch to the API for bitcoin data
        response_btc = HTTParty.get("https://api.cryptonator.com/api/ticker/btc-usd")
        response_ltc = HTTParty.get("https://api.cryptonator.com/api/ticker/ltc-usd")
        response_doge = HTTParty.get("https://api.cryptonator.com/api/ticker/doge-usd")
        response_etc = HTTParty.get("https://api.cryptonator.com/api/ticker/etc-usd")
    
        array = []
        
        # create a instance of CryptoCurrency with the bitcoin response

        btc_instance = CliCrypto::CryptoCurrency.new(
            "bitcoin",
            response_btc["ticker"]["price"],
            response_btc["ticker"]["change"],
            response_btc["ticker"]["volume"]
        )

        ltc_instance = CliCrypto::CryptoCurrency.new("litecoin", response_ltc["ticker"]["price"], response_ltc["ticker"]["change"], response_ltc["ticker"]["volume"])
        
        doge_instance = CliCrypto::CryptoCurrency.new("dogecoin", response_doge["ticker"]["price"], response_doge["ticker"]["change"], response_doge["ticker"]["volume"])
        
        etc_instance = CliCrypto::CryptoCurrency.new("ethereum", response_etc["ticker"]["price"], response_etc["ticker"]["change"], response_etc["ticker"]["volume"])

        # add instance to an array
        array << btc_instance
        array << ltc_instance
        array << doge_instance
        array << etc_instance

        # return an array that has all the instances
        return array
    end
end













