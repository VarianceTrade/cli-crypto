
class CliCrypto::CLI  # ***** CLI class should NOT contain any data *****

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
        stored_data = CliCrypto::Api.fetch()

        puts ""
        puts "Here's A List Of Popular Crypto Currencies: "
        stored_data.each.with_index(1) do |crypto_currency, index|
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
        
        elsif user_input_number < 1 || user_input_number > 4
            puts "Sorry, this selection is invalid.  Please choose a number between 1 - 4: "
       
        elsif user_input_number == 1
            display_crypto_stats("Bitcoin", 0)

        elsif user_input_number == 2
           display_crypto_stats("Litecoin", 1)

        elsif user_input_number == 3
            display_crypto_stats("Dogecoin", 2)

        elsif user_input_number == 4
            display_crypto_stats("Ethereum", 3)
        end
    end

    def display_crypto_stats(crypto, user_input_number)
        crypto_data = CliCrypto::Api.fetch()
        
        puts crypto
        puts "The Current Price is $#{crypto_data[user_input_number].price}: "
        puts "The %change is #{crypto_data[user_input_number].change}: " #these numbers are actually on par with the API
        puts "The Current Volume is #{crypto_data[user_input_number].volume}"
        puts ""
    end
end