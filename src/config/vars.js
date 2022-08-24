const path = require('path');
const nodeEnv = process.env.NODE_ENV || 'development';
// import .env variables
require('dotenv-safe').config({
  allowEmptyValues: true,
  path: path.join(__dirname, `../../.env.${nodeEnv}`),
  sample: path.join(__dirname, '../../.env.example'),
});

module.exports = {
  env: process.env.NODE_ENV,
  port: process.env.PORT,
  jwtSecret: process.env.JWT_SECRET,
  jwtExpirationInterval: process.env.JWT_EXPIRATION_MINUTES,
  jwtRefreshExpirationInterval: process.env.JWT_REFRESH_EXPIRATION_MINUTES,
  jwtResetPasswordExpirationInterval:
    process.env.JWT_RESET_PASSWORD_EXPIRATION_MINUTES,
  database: {
    client: process.env.DB_CLIENT,
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    name: process.env.DB_NAME,
  },
  /*
  mongo: {
    uri: process.env.NODE_ENV === 'test' ? process.env.MONGO_URI_TESTS : process.env.MONGO_URI,
  },
   */
  logs: process.env.NODE_ENV === 'production' ? 'combined' : 'dev',
  // upload file
  uploadDirRoot: process.env.UPLOAD_DIR_ROOT,
  uploadDir: process.env.UPLOAD_DIR,
  maxUploadFileSize: process.env.MAX_UPLOAD_FILE_SIZE,
  maxUploadFileWidth: process.env.MAX_UPLOAD_FILE_WIDTH,
  serverUploadFile: process.env.SERVER_UPLOAD_FILE,
  maxDrivingLocations: process.env.MAX_DRIVING_LOCATIONS,
};
