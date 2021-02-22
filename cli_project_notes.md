ruby maragarita_recipes

1. Fetch info from https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita
2. Parse data

Hello
Here are 5 Margarita Recipes:
1. The Eiffel Tower
2. The Handshake
3. Teh Chrysler Building
4. asdf
5. asdf
Pick a number to see more information

3

Here is the recipe for the chrysler building:

Ingredients:
* 
*
*

Steps: 
1. 
2. 
3. 

Press m to see thie menu or press x to exit the app


ruby brandons_crypto_info

1. Fetch https://cryptos.com/api/bitcoin
2. Fetch https://cryptos.com/api/dogecoin
    "ticker": {
        "base": "DOGE",
        "target": "USD",
        "price": "0.05169172",
        "volume": "2303027067.55149984",
        "change": "0.00002088"
    },
3. Fetch https://cryptos.com/api/mycoin
4. Fetch https://cryptos.com/api/coin1
5. Fetch https://cryptos.com/api/coin2
6. Parse/organize data

Hello, welcome to brandons crypto info!

Here are 4 cryptocurrencies:

1. Bitcoin
2. Dogecoin
3. Litecoin
4. Ethereal

Pick a number to see more information

2

Here is the info for Dogecoin:

Name: Dogecoin
Ticker: DOGE
Current Price: 0.05169172 USD
Today's Volume: 2303027067.55149984
Percent Change: 0.00002088%


Press m to see thie menu or press x to exit the app



a. What will your app do? What is the user experience? b. Where will get your data from? (This might be a website that you will scrape or if you prefer, an API.) c. What will you need to do with the data once you have got it? d. What classes will you be using? e. How will you display data one level deep to the user?

a) Show current, last, %change for Cryptos.
    See a list of four Crypto currencies.  Choose a Cryto and the program will show the ticker, current price, etc.

b) https://api.cryptonator.com/api/ticker/btc-usd

c) Organize it into Classes

d)

e) Display four crypto currencies and display the details once a currency is chosen by the user.



# Schedule


## Milestone 1 by end of Feb 22nd

Create a basic cli app that prompts the user for a number and prints
the number to the screen. Try to divide work into seperate classes: CryptoCLI and CryptoAPI.

## Milestone 2 by end of Feb 25th

Create basic cli app that displays a list of crypto currencies and asks the user to choose a currency (with a number). The app prints the details of the crypto currency without using the latest data from the API.

## Final Product by end of 28th

Full functionality. Full menu and experience. User can choose a crypto currency and see details. The data is fetched from the api
and stored locally.

