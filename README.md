# Ruby-UrlShortify


### Setup
* create database
`rake db:create`
* migrate files
`rake db:migrate`
* start app
`rails s`


### Using App
#### Shorten a longer Url
* POST Request -> http://localhost:3000/encode?url=yourReallyReallyLONGURL.co/ex=bumblebee
#### Decode a shortened Url
* GET Request -> http://localhost:3000/decode?url=myShortenedURL.co/ACKXAD