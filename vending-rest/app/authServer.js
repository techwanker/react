require("dotenv").config()
//this will allow us to pull params from .env fileconst express = require('express')
const app = express()app.use(express.json())
//This middleware will allow us to pull req.body.<params>const port = process.env.TOKEN_SERVER_PORT 
//get the port number from .env fileapp.listen(port, () => { 
console.log(`Authorization Server running on ${port}...`)
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