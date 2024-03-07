const http = require('http');

const server = http.createServer((req, res) => {
  res.setHeader('Content-Type', 'application/json');
  res.setHeader('Access-Control-Allow-Origin', '*');
  const responseData = JSON.stringify({ mensaje: 'Hola mundo desde el servidor' });
  res.end(responseData);
});

const PORT = 3000; 
server.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}/`);
});