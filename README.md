
# Simple Login and registration Node js Project
This project show how to login and register by using node js.


## Package installation

To run this project 

```
Open vscode
    open terminal
        a. npm install express,
            1. app.js[file name]
                - const express = require('express');  //put value
                - const app =express() 

        b. npm install ejs,
            1. app.js[file name]
                //setting up ejs, telling nodejs to use ejs
                - app.set('view engine', 'ejs')

        c. npm install nodemon,

        d. npm install sequelize, 
        e. npm install mysql2
        f. npm install bcryptjs 
            1. app.js[file name]
                - const bcrypt = require("bcryptjs")
                - password : bcrypt.hashSync(req.body.password,10),
```

## Features

- Register
- login
- hashing


## 🚀 About Me
I'm a frontend developer and just a beginner at Node js...

