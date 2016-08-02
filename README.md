# Get Sentimental About SMS with Twilio, Bluemix and AlchemyAPI

This project shows how you can use [IBM Watson](http://www.ibm.com/watson/) to analyse the sentiment of [text messages sent to a Twilio number](https://www.twilio.com/docs/api/twiml/sms/your_response) using one of the AlchemyAPI services hosted on Bluemix.

[IBM Bluemix](https://console.ng.bluemix.net/) provides a Ruby Sinatra starter application as a template. This project started with that template so the main code can be found in `helloWorld.rb`.

## Build this project yourself.

Read the blog post "[Getting Sentimental About SMS with Twilio, Bluemix and AlchemyAPI](https://www.twilio.com/blog/2015/11/get-sentimental-about-sms-with-twilio-bluemix-and-alchemyapi.html)" to learn how to build this project yourself. Alternatively, you can watch the [webinar in which the application was built live](https://www.youtube.com/watch?v=-y0W9k_CP6Y&feature=youtu.be).

# Update! Getting Sentimental About SMS Just Got Easier

This project is now updated to use [Twilio Add-ons](https://www.twilio.com/docs/api/add-ons) to get the sentiment analysis on the text in messages. This saves making the API call to AlchemyAPI, meaning we can remove the alchemy-api dependency as well as simplify our code.

--

![An example of a simple response based on the sentiment of the incoming SMS message](https://www.twilio.com/blog/wp-content/uploads/2015/11/Vgw0FfpFUvxytbxD301tY5MnYsbkPJkT59s6eBUAx7pLRbC8xt7NcE69uUNBacah1HC86X_iUqRSrj5Z1UMXPAmsI2q9igIc0688Dks2_NrmpjRpV9DTeTOA5Lq4mviKBHV-Fdg.png)
