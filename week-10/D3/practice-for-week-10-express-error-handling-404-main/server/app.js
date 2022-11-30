const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('GET / This is the root URL');
});

// if no info included, something wrong and 500
app.get('/users', (req, res, next) => {
  next(new Error());
});

// resource not found middleware

app.use((req, res, next) => {
  // create error
  const err = new Error("Sorry, the requested resource couldn't be found");
  // assign status code
  err.statusCode = 404;
  // go next middleware, passing in error
  next(err);
});


// catch all errors middleware

app.use((err, req, res, next) => {

  const message = err.message || 'Something Went Wrong';
  const statusCode = err.statusCode || 500;

  // assign res status
  res.status(statusCode);

  // turn message and status code into json and send
  res.json({
    message,
    statusCode
  });
});

const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));
