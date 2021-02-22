require_relative 'api'

class CliCrypto::CLI

    def call
        while true
            greeting
            display_menu
            break if process_input == "break"
        end
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

    def display_menu
        puts ""
        puts "Here's A List Of Popular Crypto Currencies: "
        puts "1. Bitcoin"
        puts "2. Litecoin"
        puts "3. Dogecoin"
        puts "4. Etherium"
        puts ""
        sleep(3)
        puts "Choose A Crypto Currency To See More Details, Or Press X To Exit: "
    end

    def display_crypto_stats(crypto)
        api = CliCrypto::Api.new
        crypto_data = api.fetch

        puts crypto
        puts "The Current Price is $#{crypto_data[crypto]["price"]}: "
        puts "The %change is #{crypto_data[crypto]["%change"]}: "
        puts "The Current Volume is $#{crypto_data[crypto]["current volume"]}"
        puts ""
    end

    def process_input
        user_input = gets.chomp
        user_input_number = user_input.to_i
        
        if user_input.upcase == "X"
            exit_message
            return "break"
        
        elsif user_input_number < 1 || user_input_number > 4
            puts "Sorry, this selection is invalid.  Please choose a number between 1 - 4: "
       
        elsif user_input_number == 1
            display_crypto_stats("Bitcoin")

        elsif user_input_number == 2
           display_crypto_stats("Litecoin")

        elsif user_input_number == 3
            display_crypto_stats("Dogecoin")

        elsif user_input_number == 4
            display_crypto_stats("Ethereum")
        end
    end 
end