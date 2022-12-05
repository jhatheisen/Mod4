// DO NOT EDIT - Initialize Express, handle JSON requests
const express = require('express');
const app = express();

console.log('running');

app.use((err, req, res, next) => {
  next(err);
});

// 2:
app.post('/colors', (req, res, next) => {
  console.log('post');
  next();
});

// 3:
app.use((req, res, next) => {
  next();
});

// 4:
app.use((err, req, res, next) => {
  console.log('yes');
  return res.json();
});

// DO NOT EDIT - Set port and listener
const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));
