const { database } = require('./vars');
const { Sequelize } = require('sequelize');
const sequelize = new Sequelize(
  database.name,
  database.user,
  database.password,
  {
    host: database.host,
    dialect: database.client,
    port: database.port,
    pool: {
      max: 100,
      min: 0,
      idle: 20000,
    },
  },
);

module.exports = sequelize;
