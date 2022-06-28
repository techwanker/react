module.exports = (sequelize, Sequelize) => {
    const Product = sequelize.define("product", {
      product_id: {
        type: Sequelize.BIGINT,
        autoIncrement: true,
        primaryKey: true
      },
      manufacturer_id: {
        type: Sequelize.BIGINT
      },
      product_descr: {
        type: Sequelize.STRING
      },
      mfr_product_id: {
        type: Sequelize.STRING
      },
      case_gtin: {
        type: Sequelize.STRING
      },
      box_gtin: {
        type: Sequelize.STRING
      },
      unit_gtin: {
        type: Sequelize.STRING
      },
      units_per_box: {
        type: Sequelize.INTEGER
      },
      units_per_case: {
        type: Sequelize.INTEGER
      }
    });
    return Product;
  };

