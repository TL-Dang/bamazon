var mysql = require("mysql")
var inquirer = require("inquirer")
require("console.table")

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "rootroot",
    database: "bamazon"
});

connection.connect(function(error){
    if(error){
        console.log("There has been an error connecting"+error.stack)
    }
    displayProducts();
});

function displayProducts(){
    connection.query("select * from products", function(error, response){
        if(error){
            console.log("There has been an error" + error)
        } else {
            console.table(response)
        }
    })
}