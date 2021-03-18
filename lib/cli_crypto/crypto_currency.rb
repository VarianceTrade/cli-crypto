class CliCrypto::CryptoCurrency

    @@all = []
    
    def initialize(name, price, change, volume)
        @name = name
        @price = price
        @change = change
        @volume = volume
        @change_since_last_fetch = 0
        save
    end

    def self.all
        @@all
    end

    # purpose of the following methods and why I'm using them.  Gonna be asked about macros.
    # why I have the save method

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

    def name=(name)
        @name = name
    end

    def price=(price)

        # Check if we are updating an old price
        if (@price)
            # Calculate and set change between fetches
            change_since_last_fetch = (price.to_f - @price.to_f) / @price.to_f
            @change_since_last_fetch = change_since_last_fetch
        end

        @price = price
    end

    def change=(change)
        @change = change
    end

    def volume=(volume)
        @volume = volume
    end

    def save
        @@all << self
    end

    def change_since_last_fetch
        @change_since_last_fetch
    end

    def self.clear
        @@all = []
    end

    # consider using attr_reader     

end