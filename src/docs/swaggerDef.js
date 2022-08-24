const { version } = require('../../package.json');
const config = require('../../src/config/vars');

const swaggerDef = {
  openapi: '3.0.0',
  info: {
    title: 'RESTful API Boilerplate',
    version,
    license: {
      name: 'Anh Tuan Hoang',
      url: 'anhht83@gmail.com',
    },
  },
  servers: [
    {
      url: `http://localhost:${config.port}`,
    }
  ],
};

module.exports = swaggerDef;
