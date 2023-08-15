module.exports = {
    HOST: "containers-us-west-175.railway.app",
    USER: "root",
    PASSWORD: "q1HHDFhhZbvzr2Hwe83O",
    DB: "railway",
    dialect: "mysql",
    PORT : 7907,
    pool: {
      max: 5,
      min: 0,
      acquire: 30000,
      idle: 10000,
    },
  };