var mysql = require("mysql");

//Create connection to my mysql database
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "TwinShips"
});

//function to get all ships from database
exports.getShips = async() => {
    let sql = "SELECT * FROM skibsdata"
    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if(err) throw err;
            resolve(result);
        });
    });
}

//function to get all sensordata from all ships from database
exports.getSensorData = async() => {
    let sql = "SELECT * FROM sensordata";
    return new Promise((resolve, reject) =>{
        con.query(sql, (err, result, fields) => {
            if(err) throw err;
            resolve(result);
        });
    });
}

//function to get all ships with choosen id from database
exports.getShipsById = async (id) => {
    let sql = `SELECT * FROM skibsdata WHERE id=${id}`;
    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) =>{
            if(err) throw err;
            resolve(result);
        });
    });
}

