#created by ben farmer

import urllib.request
#import the urllib libray
from xml.etree import ElementTree as ET
#import the xml editor library 
# currencyList starts with entry 0 which is GBP

currencyList = ['GBP', 'USD','EUR','JPY','TRL',]
# sets up a list with the currencies that works with the website i have used
#
# Build menu by looping through each item in currencyList
#
 
currencyPtr = 1
# sets up the variable that is set the value of 1 and has the name currencyPtr
currencyMenu = ""
#this sets up anoither calle currency menu and sets it a blank value
for currency in currencyList:
    currencyMenu +=  str(currencyPtr) + ". " + currencyList[currencyPtr - 1] + "\n\n"
    currencyPtr = currencyPtr + 1
#
# Select currencty to conver from
#
print ( "What currency to you want to convert from?:\n\n" + currencyMenu + "\n")
fromCurrencyNumber = input ("Enter from currency: ")

while any(i.isdigit() == False for i in fromCurrencyNumber) or fromCurrencyNumber == ""  : 
    print ( "What currency to you want to convert from?:\n\n" + currencyMenu + "\n")
    fromCurrencyNumber = input ("Enter from currency: ")

fromCurrencyNumber =int(fromCurrencyNumber) - 1
fromCurrency = currencyList[fromCurrencyNumber]
#
# Select currency to conver to
#
print("What currency do you want to conver to?:\n\n" + currencyMenu + "\n")
toCurrencyNumber = input ("Enter to currency: ")

while any(i.isdigit() == False for i in toCurrencyNumber) or toCurrencyNumber == ""  : 
    print ( "What currency to you want to convert to?:\n\n" + currencyMenu + "\n")
    toCurrencyNumber = input ("Enter from currency: ")

toCurrencyNumber = int(toCurrencyNumber) - 1
toCurrency = currencyList[toCurrencyNumber]
amount = float( input("Enter amount to convert: "));
#
# Call website to find exchange rate
#
url = "http://www.webservicex.net/CurrencyConvertor.asmx/ConversionRate?FromCurrency=" + fromCurrency + "&ToCurrency=" + toCurrency


request = urllib.request.Request(url)
response = urllib.request.urlopen(request)
currency = response.read()
#
# Read exchange rate from xml returned from currency convertor web site
#

exchangeRate = float(ET.fromstring(currency).text)
print ('amount: ', round(amount * exchangeRate,2))
# press enter to exit the program at the end
input ("press enter to exit")
