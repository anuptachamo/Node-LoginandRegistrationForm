const express = require('express');  //express laii require gareko
const { users } = require('./model/index');
const bcrypt = require("bcryptjs");

const app =express()      // require laii call gareko


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

    // res.send("Successful")
    res.redirect('/login')
})


//Login
app.get('/login',(req, res) =>{
    res.render('login');
});

// app.post('/createLogin', async(req, res ) =>{
//     console.log(req.body);

//         const email =  req.body.email
//         const password = req.body.password

//          const userFound = await users.findAll({
//             where:{
//                 email: email,
//                 // password:password,
//             },   
//         });
        
//         // console.log(userFound);

//         if(userFound.length == 0){
//             res.send('Invaild Username or Password')
//         }else{
//             const databasePassword = userFound[0].password;
//             console.log(databasePassword)
//             console.log(password)



//             const isPasswordCorrect = bcrypt.compareSync(password,databasePassword);
//             console.log(isPasswordCorrect);


//             if (isPasswordCorrect){
//                 res.send("Login Successfully")
//             }else{
//                 res.send("Invaild password");
//             }
//         }
// });


// LOGIN user post API
app.post("/createLogin", async (req, res) => {
    // email , password
    const email = req.body.email;
    const password = req.body.password;
  
    //aako email registered xa ki xainw check garnu paryo
    const userFound = await users.findAll({
      where: {
        email: email,
      },
    });
  
    // if registered xainw vaney(no)
    if (userFound.length == 0) {
      // error faldinu paryo invalid email or email not registered error
      res.send("Invalid email or password");
    } else {
      const databasePassword = userFound[0].password; // database pahila register garda ko password
      //if registered xa vaney (yes)
  
      // if yes(xa) vaney ,password check garnu paryo
      const isPasswordCorrect = bcrypt.compareSync(password, databasePassword);
  
      if (isPasswordCorrect) {
        // match vayo(yes),login sucessfully
        res.send("Login Sucessfull");
      } else {
        // match vayena (no) , error->invalid password
        res.send("Invalid email or password");
      }
    }
  });



//port no : 1300-65000, 1300 vanda tala chai internet system le use garirahunchha
app.listen(3000, function(){
    console.log("Node js project has started at port 3000");
})