var express = require('express');
var router = express.Router();
var db = require('../db/dbLogic');


/* GET home page. */
router.get('/', async (req, res, next) => {
  res.send("hej");
});

module.exports = router;