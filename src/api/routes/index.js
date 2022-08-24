const express = require('express');
const docsRoutes = require('./docs.route');
const addressRoutes = require('./address.route.js');

const { env } = require('../../config/vars');
const router = express.Router();

/**
 * GET status
 */
router.get('/status', (req, res) => res.send('OK'));

/**
 * GET docs
 */
if (env !== 'production') {
  router.use('/docs', docsRoutes);
}
router.use('/address', addressRoutes);

module.exports = router;
