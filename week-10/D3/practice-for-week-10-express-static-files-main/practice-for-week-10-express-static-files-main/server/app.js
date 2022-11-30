const express = require('express');
const app = express();
// Your code here
const path = require('path');

// p1
// app.use('/', express.static(path.join(__dirname,'assets')));

// p2
// app.use('/', express.static(path.join(__dirname, 'assets/scripts')));

// p3
// app.use('/stylesheets', express.static(path.join(__dirname, 'assets/css')));

const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));
