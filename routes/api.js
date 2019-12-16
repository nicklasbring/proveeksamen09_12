var express = require('express');
var router = express.Router();
var db = require('../db/dbLogic');


//Get request på api routen
router.get('/', async (req, res, next) => {
  res.send(await db.getShips());
});

//
router.get('/:id', async (req, res, next) => {
    res.send(await db.getShipsById(req.params.id));
  });



module.exports = router;