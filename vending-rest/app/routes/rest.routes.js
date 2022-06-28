module.exports = app => {

  const products = require("../controllers/product.controller.js");
  const etlFiles = require("../controllers/etlFile.controller.js");
  var productRouter = require("express").Router();

  productRouter.get("/products", products.findAll);    // Retrieve a single Product with id
  productRouter.put("/product/:product_id", products.update);  // Update a Tutorial with id
  productRouter.get("/product/:product_id", products.findOne); // Retrieve a single Product with id
  productRouter.put("/product/", products.create); // Retrieve a single Product with id
  productRouter.put("/product/", products.create); // Retrieve a single Product with id
  productRouter.put("/create/", products.create); // Retrieve a single Product with id
  productRouter.get("/loads", etlFiles.findAll);    // retrieve all loads
  productRouter.get("/loads/:etl_file_id", etlFiles.findOne);    // retrieve all loads
  app.use("/api", productRouter);

  
  console.log(productRouter.stack)

  
};
