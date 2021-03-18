
class CliCrypto::CLI  # ***** CLI class should NOT contain any data *****

    def call
        get_crypto_currencies
        while true
            greeting
            display_menu
            break if process_input == "break"
        end
    end

    # new method
    def get_crypto_currencies
        CliCrypto::Api.fetch
        @crypto_data = CliCrypto::CryptoCurrency.all
    end

    def greeting
        puts "######################################"
        puts "# Welcome To Brandon's Crypto CLI"
        puts "######################################"
        sleep(2)
    end

    def exit_message
        puts "Thank You For Visiting Brandon's Crypto CLI"
        puts "Come Back For The Latest Crypto Prices"
        puts "HAVE A NICE DAY!!!"
    end

    def display_menu #practice make app work without the @crypt_data instance variable
        puts ""
        puts "Here's A List Of Popular Crypto Currencies: "
        @crypto_data.each.with_index(1) do |crypto_currency, index|
            puts "#{index}. #{crypto_currency.name}"
        end
        puts ""
        sleep(3)
        puts "Choose A Crypto Currency To See More Details, Or Press X To Exit: "
    end

    def process_input
        user_input = gets.chomp
        user_input_number = user_input.to_i
        
        if user_input.upcase == "X"
            exit_message
            return "break"
        
        elsif user_input_number < 1 || user_input_number > 4 #could be asked to refactor
            puts "Sorry, this selection is invalid.  Please choose a number between 1 - 4: "
            
        else
            display_crypto_stats(user_input_number - 1) # handle inputs 1 - 4
        end
    end

    def display_crypto_stats(user_input_number)
        # fetch latest stats from api
        CliCrypto::Api.fetch()
        crypto = @crypto_data[user_input_number]
        puts crypto.name
        puts "The Current Price is $#{crypto.price}: "
        puts "The %change is #{crypto.change}: " #these numbers are actually on par with the API
        puts "The Current Volume is #{crypto.volume}"
        puts "The percentage change since last fetch: #{crypto.change_since_last_fetch}"
        puts ""
        
    end


    def compare_prices(user_input)
        new_crypto_price = []
        @crypto_data = CliCrypto::CryptoCurrency.all

        if @crypto_data.price == new_crypto_price
            return whatever
        else
            return new_crypto_price
    end

    end
end


#what if we added another stat (previous, etc), what would I have to change?

# How do we not have to use the crypto data instance variable
# What if we wanted to fetch from another url?
# What if I wanted to add another crypto currency? What do I change?
# What I wanted to display the Price / Volume?


