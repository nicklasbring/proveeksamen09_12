var mysql = require("mysql");

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "TwinShips"
});

exports.getShips = async() => {
    let sql = "SELECT * FROM skibsdata"
    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if(err) throw err;
            resolve(result);
        });
    });
}

exports.getSensorData = async() => {
    let sql = "SELECT * FROM sensordata"
    return new Promise((resolve, reject) =>{
        con.query(sql, (err, result, fields) => {
            if(err) throw err;
            resolve(result);
        });
    });
}

