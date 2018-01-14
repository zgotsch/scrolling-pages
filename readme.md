## The Stack

* Node v0.8.8
* Express v3.x
* CoffeeScript v1.3.3
* Eco v1.1.x
* Connect Assets v2.2.1

## Requirements

* [NodeJs](http://nodejs.org)
* [CoffeeScript](http://coffeescript.org)
* [Mocha](http://mochajs.org/)

## Included Packages

Via npm: (`npm install`)
* [Express](http://expressjs.com)
* [Eco](https://github.com/sstephenson/eco)
* [connect-assets](http://github.com/TrevorBurnham/connect-assets)
* [Mocha](http://mochajs.org/)
* [Should.Js](https://github.com/visionmedia/should.js/)

## Usage

### Local

To build source files and run the server (with automatic reloading on changes) just run:

    cake go

### Heroku

To deploy to heroku (you will need a verified heroku account for redistogo):

    heroku create
    [Optional] heroku addons:add redistogo:nano
    git push heroku master
    heroku open

## Thanks to

* [Jeremy Ashkenas](https://github.com/jashkenas) for creating coffee-script
* [TJ Holowaychuk](https://github.com/visionmedia) for creating express
* [express-coffee](https://github.com/twilson63/express-coffee) upon which this is based.
