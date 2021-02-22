class CliCrypto::CryptoCurrency
    
    def initialize(crypto, price, change, volume)
        @crypto = crypto
        @price = price
        @change = change
        @volume = volume
    end

    def price
        @price
    end

    def change
        @change
    end

    def volume
        @volume
    end

    

end