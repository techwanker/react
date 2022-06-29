module.exports = (sequelize, Sequelize) => {
    const EtlFile = sequelize.define("etlFiles", {
      etl_file_id: {
        type: Sequelize.BIGINT,
        autoIncrement: true,
        primaryKey: true
      },
      distributor_id: {
        type: Sequelize.BIGINT
      },
      filename: {
        type: Sequelize.STRING
      },
      customer_count: {
        type: Sequelize.INTEGER
      },
      inventory_count: {
        type: Sequelize.INTEGER
      },
      sale_count: {
        type: Sequelize.INTEGER
      },
      transaction_id: {
        type: Sequelize.BIGINT
      },
      json: {
        type: Sequelize.JSONB
      }
    });
    return EtlFile;
  };

