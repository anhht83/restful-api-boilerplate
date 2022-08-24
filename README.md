# restful-api-boilerplate

Project for building RESTful APIs and microservices using Node.js, Express and MySQL

## Requirements

 - [Node v7.6+](https://nodejs.org/en/download/current/)
 - [Yarn](https://yarnpkg.com/en/docs/install)

### Server requirements
 - [Node v7.6+](https://nodejs.org/en/download/current/)
 - [Yarn](https://yarnpkg.com/en/docs/install)
 - Apache2 / Nginx
 - pm2

## Getting Started

#### Clone the repo and make it yours:

```bash
git clone https://github.com/anhht83/restful-api-boilerplate.git
cd restful-api-boilerplate
```

#### Install dependencies:

```bash
yarn
```
#### Build sample database: 
import `sample_db.sql` file to your MySql database


#### Set environment variables:

```bash
cp .env.example .env.development
```

## Running Locally

```bash
yarn dev
```

## Running in Production

```bash
yarn start
```

## Lint

```bash
# lint code with ESLint
yarn lint

# try to fix ESLint errors
yarn lint:fix

# lint and watch for changes
yarn lint:watch
```

## Test

```bash
# run all tests with Mocha
yarn test

# run unit tests
yarn test:unit

# run integration tests
yarn test:integration

# run all tests and watch for changes
yarn test:watch

# open nyc test coverage reports
yarn coverage
```

## Validate

```bash
# run lint and tests
yarn validate
```

## Logs

```bash
# show logs in production
pm2 logs
```

## Documentation

```bash
http://localhost:3001/docs
```

[Anh Tuan Hoang](anhht83@gmail.com)
