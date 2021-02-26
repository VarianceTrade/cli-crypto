
class CliCrypto::Api

    def self.fetch
        # go make a fetch to the API for bitcoin data
        response_btc = HTTParty.get("https://api.cryptonator.com/api/ticker/btc-usd")
        response_ltc = HTTParty.get("https://api.cryptonator.com/api/ticker/ltc-usd")
        response_doge = HTTParty.get("https://api.cryptonator.com/api/ticker/doge-usd")
        response_etc = HTTParty.get("https://api.cryptonator.com/api/ticker/etc-usd")
    
        array = []
        
        # create a instance of CryptoCurrency with the bitcoin response

        array << CliCrypto::CryptoCurrency.new(
            "Bitcoin",
            response_btc["ticker"]["price"],
            response_btc["ticker"]["change"],
            response_btc["ticker"]["volume"])

        array << CliCrypto::CryptoCurrency.new("Litecoin",
            response_ltc["ticker"]["price"],
            response_ltc["ticker"]["change"],
            response_ltc["ticker"]["volume"])
        
        array << CliCrypto::CryptoCurrency.new("Dogecoin",
            response_doge["ticker"]["price"],
            response_doge["ticker"]["change"],
            response_doge["ticker"]["volume"])
        
        array << CliCrypto::CryptoCurrency.new("Ethereum",
            response_etc["ticker"]["price"],
            response_etc["ticker"]["change"],
            response_etc["ticker"]["volume"])

        # return an array that has all the instances
        return array
    end
end













