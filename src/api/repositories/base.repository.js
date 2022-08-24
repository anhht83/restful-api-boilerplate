class BaseRepository {
  static get model() {
    return null;
  }

  static async findByPk(pk, options) {
    const entity = await this.model.findByPk(pk, options);
    return entity;
  }

  static async findOne(options) {
    const entity = await this.model.findOne(options);
    return entity;
  }

  static async findAll(options) {
    const entities = await this.model.findAll(options);
    return entities;
  }

  // return {count: number, rows: Model[]}
  static async findAndCountAll(options) {
    const result = await this.model.findAndCountAll(options);
    return result;
  }

  // Find a row that matches the query, or build (but don't save) the row if none is found. The successful result of the promise will be (instance, built)
  static async findOrBuild(options) {
    const entity = await this.model.findOrBuild(options);
    return entity;
  }

  // Find a row that matches the query, or build and save the row if none is found The successful result of the promise will be (instance, created)
  static async findOrCreate(options) {
    const [entity, isCreated] = await this.model.findOrCreate(options);
    return [entity, isCreated];
  }

  static async createOrUpdate(options) {
    const [entity, isCreated] = await this.model.findOrCreate(options);
    if (!isCreated && options.defaults) {
      await this.updateModel(entity, options.defaults);
    }
    return [entity, isCreated];
  }

  static async create(record, options) {
    const entity = await this.model.create(record, options);
    return entity;
  }

  static async bulkCreate(records, options) {
    const entities = await this.model.bulkCreate(records, options);
    return entities;
  }

  static async updateModel(model, record, options = {}) {
    /*
    model.set(record);
    const hasChanged = model.changed;
    const previous = model.previous();
    await model.save(options);
    model.changed = hasChanged;
    model.previous = previous;
    */
    await model.update(record, options);
    return model;
  }

  static async updateModelAndReload(model, record, options) {
    await model.update(record, options);
    await model.reload();
    return model;
  }

  static async update(record, options) {
    const entities = await this.model.update(record, options);
    return entities;
  }

  static async save(model, record, options = {}) {
    model.set(record);
    await model.save(options);
    return model;
  }

  static async destroyModel(model, options) {
    await model.destroy(options);
    return model;
  }

  static async destroy(options) {
    await this.model.destroy(options);
  }

  static async count(options) {
    const result = await this.model.count(options);
    return result;
  }

  static async max(field, options) {
    const result = await this.model.max(field, options);
    return result;
  }

  static async min(field, options) {
    const result = await this.model.min(field, options);
    return result;
  }

  static async sum(field, options) {
    const result = await this.model.sum(field, options);
    return result;
  }
}

module.exports = BaseRepository;
