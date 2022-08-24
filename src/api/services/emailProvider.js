const nodemailer = require('nodemailer');
const { emailConfig } = require('../../../config/vars');
const Email = require('email-templates');
const logger = require('../../../config/logger');

// SMTP is the main transport in Nodemailer for delivering messages.
// SMTP is also the protocol used between almost all email hosts, so its truly universal.
// if you dont want to use SMTP you can create your own transport here
// such as an email service API or nodemailer-sendgrid-transport

const transporter = nodemailer.createTransport({
  port: emailConfig.port,
  host: emailConfig.host,
  auth: {
    user: emailConfig.username,
    pass: emailConfig.password,
  },
  secure: emailConfig.secure, // upgrades later with STARTTLS -- change this based on the PORT
  encryption: emailConfig.encryption,
  // jsonTransport: true,
});

// verify connection configuration
transporter.verify((error) => {
  if (error) {
    logger.stream.write(`send email: ${error}`);
  } else {
    logger.stream.write(`send email: verify with email connection => success`);
  }
});

exports.sendEmail = async (props = {}) => {
  const email = new Email({
    views: {
      root: __dirname,
      options: {
        extension: 'ejs',
      },
    },
    message: {
      from: {
        name: emailConfig.fromName,
        address: emailConfig.fromAddress,
      },
    },
    send: true,
    preview: false,
    transport: transporter,
  });
  email
    .send(props.send || {})
    .catch(() =>
      logger.stream.write(`send email: error sending  ${props.template} email`),
    );
};

exports.sendPasswordChangeEmail = async (to) => {
  await this.sendEmail({
    send: {
      template: 'passwordChange',
      message: { to },
    },
  });
};
