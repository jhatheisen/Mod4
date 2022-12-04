// DO NOT EDIT - Initialize Express, handle JSON requests
const express = require('express');
const app = express();

app.post('/world', (req, res) => { console.log(1) });

// 2:
app.post('/:word', (req, res) => { console.log(2) });

// 3:
app.post('/hello', (req, res) => { console.log(3) });

// 4:
app.post('/:word', (req, res) => { console.log(4) });

// DO NOT EDIT - Set port and listener
const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));
