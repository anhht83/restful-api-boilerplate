const Sequelize = require('sequelize');
const sequelize = require('../../config/sequelize');

const Country = require('./country.model')(sequelize, Sequelize);

const models = {
  Country,
};

module.exports = models;
