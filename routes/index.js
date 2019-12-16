var express = require('express');
var router = express.Router();
var db = require('../db/dbLogic');

/* GET home page. */
router.get('/', async (req, res, next) => {
  res.render('index', {
    title: 'Skibsdata', 
    ships: await db.getShips(),
    sensorer: await db.getSensorData()
    });
});


module.exports = router;
