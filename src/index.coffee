express = require 'express'
assets = require 'connect-assets'
_ = require 'underscore'
url = require 'url'
fs = require 'fs'
eco = require 'eco'

app = express()

# Add Connect Assets
app.use assets()

# Parse post requests
app.use express.bodyParser()

# Set the public folder as static assets
app.use express.static(process.cwd() + '/public')

# Set View Engine
app.set 'view engine', 'eco'
app.engine 'eco', (path, options, callback) ->
    console.log path
    fs.readFile path, 'utf8', (err, str) ->
        if err?
            callback err
        else
            callback null, eco.render str, options

(require './routes') app
(require './square') app

# Start Server
port = process.env.PORT ? process.env.VMC_APP_PORT ? 3000
app.listen port, -> console.log "Listening on #{port}\nPress CTRL-C to stop server."
