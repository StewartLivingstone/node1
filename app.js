var express = require('express');
var app = express();
var path = require("path");

// EXPESS MIDDLEWARE
app.use(express.static(path.join(__dirname+'/static')));

// OUR MIDDLERWARE
// app.use((req, res, next) => {
//   console.log(req);
//   next();
// })

app.get('/', (request, response) => {
  response.send('Hello world!');
});

app.get('/about', (request, response) => {
//   response.send('Hello world!');
  response.sendFile(path.join(__dirname+'/views/index.html'));
});

app.listen(3000, () => console.log("Listening on port 3000."));