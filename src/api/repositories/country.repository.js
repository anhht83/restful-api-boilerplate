const BaseRepository = require('./base.repository');
const models = require('../models');

class CountryRepository extends BaseRepository {
  static get model() {
    return models.Country;
  }


}

module.exports = CountryRepository;
