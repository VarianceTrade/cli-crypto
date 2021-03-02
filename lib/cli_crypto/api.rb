#Make this class more dry (possibly asked to refactor)


class CliCrypto::Api

    def self.fetch
        # go make a fetch to the API for bitcoin data

        crypto_symbols = ["btc", "ltc", "doge", "etc"]

        full_crypto_name = ["Bitcoin", "Litecoin", "Dogecoin", "Ethereum"]

        crypto_index = 0

        crypto_symbols.each do |symbol|
            response = HTTParty.get("https://api.cryptonator.com/api/ticker/#{symbol}-usd")
            CliCrypto::CryptoCurrency.new(
                "#{full_crypto_name[crypto_index]}",
                response["ticker"]["price"], 
                response["ticker"]["change"], 
                response["ticker"]["volume"])
                crypto_index += 1
        end

        # response_btc = HTTParty.get("https://api.cryptonator.com/api/ticker/btc-usd")
        # response_ltc = HTTParty.get("https://api.cryptonator.com/api/ticker/ltc-usd")
        # response_doge = HTTParty.get("https://api.cryptonator.com/api/ticker/doge-usd")
        # response_etc = HTTParty.get("https://api.cryptonator.com/api/ticker/etc-usd")
        
        # # Create a instance of CryptoCurrency with the bitcoin response.
        # # Each new instance will be saved into the CryptoCurrency @@all array.



        
        
        
        
        
        
        
        
        
        # CliCrypto::CryptoCurrency.new(
 
        #     "btc",
        #     response_btc["ticker"]["price"],
        #     response_btc["ticker"]["change"],
        #     response_btc["ticker"]["volume"])

        # CliCrypto::CryptoCurrency.new("ltc",
        #     response_ltc["ticker"]["price"],
        #     response_ltc["ticker"]["change"],
        #     response_ltc["ticker"]["volume"])
        
        # CliCrypto::CryptoCurrency.new("doge",
        #     response_doge["ticker"]["price"],
        #     response_doge["ticker"]["change"],
        #     response_doge["ticker"]["volume"])
        
        # CliCrypto::CryptoCurrency.new("etc",
        #     response_etc["ticker"]["price"],
        #     response_etc["ticker"]["change"],
        #     response_etc["ticker"]["volume"])
    end
end













