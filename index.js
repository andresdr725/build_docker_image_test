const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('Hello World desde Node.js!');
});

app.listen(PORT, () => {
  console.log(`Servidor en ejecución → http://localhost:${PORT}`);
});
