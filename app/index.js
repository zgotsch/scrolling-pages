// Generated by CoffeeScript 1.3.3
var app, assets, eco, express, fs, port, url, _, _ref, _ref1;

express = require('express');

assets = require('connect-assets');

_ = require('underscore');

url = require('url');

fs = require('fs');

eco = require('eco');

app = express();

app.use(assets());

app.use(express.bodyParser());

app.use(express["static"](process.cwd() + '/public'));

app.set('view engine', 'eco');

app.engine('eco', function(path, options, callback) {
  console.log(path);
  return fs.readFile(path, 'utf8', function(err, str) {
    if (err != null) {
      return callback(err);
    } else {
      return callback(null, eco.render(str, options));
    }
  });
});

(require('./routes'))(app);

(require('./square'))(app);

port = (_ref = (_ref1 = process.env.PORT) != null ? _ref1 : process.env.VMC_APP_PORT) != null ? _ref : 3000;

app.listen(port, function() {
  return console.log("Listening on " + port + "\nPress CTRL-C to stop server.");
});
