const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  dialect: dbConfig.dialect,

  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle
  },
  define: {
    freezeTableName: true,
    timestamps: false
    }
});

sequelize.authenticate()
  .then(() => console.log(`======= DB connected successfully =======`))
  .catch((er) => console.log(er));

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.etl_file = require("./etl_file.model.js")(sequelize, Sequelize);
db.product = require("./product.model.js")(sequelize, Sequelize);

module.exports = db;
