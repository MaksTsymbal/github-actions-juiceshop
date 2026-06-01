const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('Juice Shop Demo'));
app.listen(3000);
