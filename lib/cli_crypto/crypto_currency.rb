class CliCrypto::CryptoCurrency

    @@all = []
    
    def initialize(name, price, change, volume)
        @name = name
        @price = price
        @change = change
        @volume = volume
        save
    end

    def self.all
        if @@all.empty? then CliCrypto::Api.fetch() end
        @@all
    end

    def name
        @name
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

    def save
        @@all << self
    end

    

end