var mysql = require("mysql");

//Create connection to my mysql database
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "TwinShips"
});

//function to get all ships from database
exports.getShips = async () => {
    let sql = "SELECT * FROM skibsdata";

    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if (err) throw err;
            resolve(result);
        });
    });
}

//function to get all sensordata from all ships from database
exports.getSensorData = async () => {
    let sql = "SELECT * FROM sensordata";

    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if (err) throw err;
            resolve(result);
        });
    });
}

//function to get all ships with choosen id from database
exports.getShipsById = async (id) => {
    let sql = `SELECT * FROM skibsdata WHERE id=${id}`;

    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if (err) throw err;
            resolve(result);
        });
    });
}

//function to insert a new ship in the database
exports.createShip = async (ship) => {
    let sql = `INSERT INTO skibsdata VALUES(
        ${ship.id}, ${ship.user_id}, "${ship.navn}", 
        "${ship.hjemhavn}", "${ship.kaldesignal}", ${ship.unikt_mmsi_nummer}, 
        "${ship.anvendelse}", ${ship.brt_bt}, ${ship.laengde}, 
        ${ship.maks_antal_om_bord})`;

    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if (err) throw err;
            resolve(result);
        });
    });
}

//function to update an existing ship from database
exports.updateShip = async (ship, id) => {
    let sql = `UPDATE skibsdata SET user_id=${ship.user_id}, navn="${ship.navn}", 
    hjemhavn="${ship.hjemhavn}", kaldesignal="${ship.kaldesignal}", unikt_mmsi_nummer=${ship.unikt_mmsi_nummer}, 
    anvendelse="${ship.anvendelse}", brt_bt=${ship.brt_bt}, laengde=${ship.laengde}, 
    maks_antal_om_bord=${ship.maks_antal_om_bord} WHERE id=${id}`;

    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if (err) throw err;
            resolve(result);
        });
    });
}

//function to delete a ship with a choosen id from database
exports.deleteShip = async (id) => {
    sql = `DELETE FROM skibsdata WHERE id=${id}`;
    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if(err) throw err;
            resolve(result);
        });
    });
}

