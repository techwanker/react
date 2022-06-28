const db = require("../models");
const Product = db.products;
const Op = db.Sequelize.Op;

// Create and Save a new Product
exports.create = (req, res) => {
  // Validate request
  if (!req.body.title) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
    return;
  }

  // Create a Product
  const product = {
    manufacturer_id:  req.body.manufacturer_id,
    product_descr:  req.body.descr,
    mfr_product_id:  req.body.mfr_product_id,
    case_gtin:  req.body.case_gtin,
    box_gtin:  req.body.box_gtin,
    unit_gtin:  req.body.unit_gtin,
    units_per_box:  req.body.units_per_box,
    units_per_case:  req.body.units_per_case
  };

  // Save Product in the database
  Product.create(product)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Product."
      });
    });
};

// Retrieve all Products from the database.
exports.findAll = (req, res) => {
  const description = req.query.product_description;
  var condition = description ? { product_description: { [Op.iLike]: `%${product_description}%` } } : null;

  Product.findAll({ where: condition })   // this should filter in database 
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving products."
      });
    });
};

// Find a single Product with an id
exports.findOne = (req, res) => {
  const product_id = req.params.product_id;

  Product.findByPk(product_id)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Product with id=" + id
      });
    });
};

// Update a Product by the id in the request
exports.update = (req, res) => {
  const product_id = req.params.product_id;

  Product.update(req.body, {
    where: { product_id: product_id }
  })
    .then(num => {  // TODO this must be the return code from Product.update
      if (num == 1) {
        res.send({
          message: "Product was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Product with id=${id}. Maybe Product was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Product with id=" + id
      });
    });
};

// // Delete a Product with the specified id in the request
// exports.delete = (req, res) => {
//   const id = req.params.id;

//   Product.destroy({
//     where: { id: id }
//   })
//     .then(num => {
//       if (num == 1) {
//         res.send({
//           message: "Product was deleted successfully!"
//         });
//       } else {
//         res.send({
//           message: `Cannot delete Product with id=${id}. Maybe Product was not found!`
//         });
//       }
//     })
//     .catch(err => {
//       res.status(500).send({
//         message: "Could not delete Product with id=" + id
//       });
//     });
// };

// // Delete all Products from the database.
// exports.deleteAll = (req, res) => {
//   Product.destroy({
//     where: {},
//     truncate: false
//   })
//     .then(nums => {
//       res.send({ message: `${nums} Products were deleted successfully!` });
//     })
//     .catch(err => {
//       res.status(500).send({
//         message:
//           err.message || "Some error occurred while removing all products."
//       });
//     });
//};

// find all published Product
// exports.findAllPublished = (req, res) => {
//   Product.findAll({ where: { published: true } })
//     .then(data => {
//       res.send(data);
//     })
//     .catch(err => {
//       res.status(500).send({
//         message:
//           err.message || "Some error occurred while retrieving products."
//       });
//    });
//};
