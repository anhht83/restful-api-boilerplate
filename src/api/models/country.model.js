const { Model } = require('sequelize');

class Country extends Model {}

module.exports = (sequelize, { DataTypes }) =>
  Country.init(
    {
      name: DataTypes.STRING,
    },
    {
      tableName: 'datas__countries',
      sequelize,
      modelName: 'country',
      timestamps: false,
    },
  );
