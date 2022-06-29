const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

var corsOptions = {
  origin: "http://localhost:3000"
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

const db = require("./app/models");
db.sequelize.sync();    // create database tables if they don't exist
// // drop the table if it already exists
// db.sequelize.sync({ force: true }).then(() => {
//   console.log("Drop and re-sync db.");
// });

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to Pacific Data Services - Sales Analysis." });
});

require("./app/routes/rest.routes")(app);

// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);


//
require("dotenv").config()
//this will allow us to pull params from .env fileconst express = require('express')
//const app = express()app.use(express.json())
//This middleware will allow us to pull req.body.<params>const port = process.env.TOKEN_SERVER_PORT 
//get the port number from .env fileapp.listen(port, () => { 
console.log(`Authorization Server running on ${PORT}...`)
})
const bcrypt = require ('bcrypt')

const users = []// REGISTER A USER
app.post ("/createUser", async (req,res) => {
    const user = req.body.name
    const hashedPassword = await bcrypt.hash(req.body.password, 9)
    users.push ({user: user, password: hashedPassword})
    res.status(200).send(users)
    console.log(users)
})