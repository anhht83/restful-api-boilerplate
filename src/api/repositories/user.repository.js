const BaseRepository = require('./base.repository');
const models = require('../models');

class UserRepository extends BaseRepository {
  static get model() {
    return models.User;
  }

  static async oAuthLogin({
    service,
    id,
    email,
    name,
    picture,
  }) {
    const data = {
      [`${service}Id`]: id,
      email,
      fullName: name,
      avatar: picture,
      lastLogin: new Date().toISOString(),
    };

    let user = await this.findOne({ where: { email } });
    if (user) {
      user = await this.updateModel(user, data);
    } else {
      user = await this.create(data);
    }
    return { user, service };
  }
}

module.exports = UserRepository;
