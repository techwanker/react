const db = require("../models");
const EtlFile = db.etl_file;   // the model in product controller this specifies db.Products but the product table is being used
const Op = db.Sequelize.Op;


/**
 *  Retrieve all EtlFiles from the database.
 * @param {*} req 
 * @param {*} res 
 */
exports.findAll = (req, res) => {
   
  //  const fname = req.query.fname;
  //  var condition = fname ? { filename: { [Op.iLike]: `%${filename}%` } } : null;

  //  const distributor_id = req.query.distributor_id;
  //  var condition = distributor_id ? { distributor_id: Op.eq `%${distributor_id}%` };

  //EtlFile.findAll({ where: condition })   // this should filter in database 
  EtlFile.findAll()   // this should filter in database 
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving etl_files."
      });
    });
};

/**
* Find a single EtlFile with an id
 * 
 * @param {*} req 
 * @param {*} res 
 */
exports.findOne = (req, res) => {
  const etl_file_id = req.params.etl_file_id;

  EtlFile.findByPk(etl_file_id)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving EtlFile with id=" + id
      });
    });
};

// Update a EtlFile by the id in the request
exports.update = (req, res) => {
  const etl_file_id = req.params.etl_file_id;

  EtlFile.update(req.body, {
    where: { etl_file_id: etl_file_id }
  })
    .then(num => {  // TODO this must be the return code from EtlFile.update
      if (num == 1) {
        res.send({
          message: "EtlFile was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update EtlFile with id=${id}. Maybe EtlFile was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating EtlFile with id=" + id
      });
    });
};
