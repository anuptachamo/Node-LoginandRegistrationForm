const express = require('express');  //put value
const { users } = require('./model/index');
const bcrypt = require("bcryptjs");

const app =express()      //calling


//require database
require("./model/index")

//setting up ejs, telling nodejs to use ejs
app.set('view engine', 'ejs')

// Request(req)/Response(res) cycle
app.get('/',(req, res) =>{
    res.send('You are in home page');
});

app.use(express.json());
app.use(express.urlencoded({extended:true}));


//register
app.get('/register',(req, res) =>{
    res.render('register');
});

//setting
app.post('/createUser', async(req, res ) =>{
    console.log(req.body);

    //database ma halnu paryo
    await users.create({
        username : req.body.username,
        email : req.body.email,
        password : bcrypt.hashSync(req.body.password,10),
    })

    res.send("Successful")
    // res.redirect('/about')
})


//port no : 1300-65000, 1300 vanda tala chai internet system le use garirahunchha
app.listen(3000, function(){
    console.log("Node js project has started at port 3000");
})