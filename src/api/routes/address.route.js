const express = require('express');
const controller = require('../controllers/address.controller');

const router = express.Router();

/**
 * @swagger
 * /address/countries:
 *   get:
 *     summary: get countries list
 *     description: countryId of UK is `826`, should be set as default value
 *     tags: [Address]
 *     responses:
 *       "200":
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                  $ref: "#components/schemas/Country"
 */
router.route('/countries').get(controller.getCountries);

module.exports = router;
