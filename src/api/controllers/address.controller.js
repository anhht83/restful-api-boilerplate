const CountryRepository = require('../repositories/country.repository');

exports.getCountries = async (req, res, next) => {
  try {
    console.log('aaa');
    const countries = await CountryRepository.findAll({
      order: [['name', 'ASC']],
    });
    return res.json(countries);
  } catch (error) {
    return next(error);
  }
};
