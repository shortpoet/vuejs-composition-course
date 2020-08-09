require("dotenv").config();
// require("dotenv").config(require('path').resolve(__dirname, '..'));
console.log(require('path').resolve(__dirname, '..'));

// https://github.com/typeorm/typeorm/issues/510

module.exports = {
   "type": "postgres",
   "host": process.env.POSTGRES_HOST,
   "port": 5432,
   "username": process.env.POSTGRES_USER,
   "password": process.env.POSTGRES_PASSWORD,
   "database": process.env.POSTGRES_DB,
   "synchronize": false,
   "logging": false,
   "entities": [
      "src/entity/**/*.ts"
   ],
   "migrations": [
      "src/migration/**/*.ts"
   ],
   "subscribers": [
      "src/subscriber/**/*.ts"
   ],
   "cli": {
      "entitiesDir": "src/entity",
      "migrationsDir": "src/migration",
      "subscribersDir": "src/subscriber"
   }
};