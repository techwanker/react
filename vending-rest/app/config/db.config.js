module.exports = {
  HOST: "localhost",
  USER: "javautil",
  PASSWORD: "tutorial",
  DB: "integration_test",
  dialect: "postgres",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
