class CliCrypto::CryptoCurrency
    
    def initialize(name, price, change, volume)
        @name = name
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