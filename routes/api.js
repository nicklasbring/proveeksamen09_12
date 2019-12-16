var express = require('express');
var router = express.Router();
var db = require('../db/dbLogic');


//get request på api routen
router.get('/', async (req, res, next) => {
    res.send(await db.getShips());
});

//get request with choosen id
router.get('/:id', async (req, res, next) => {
    res.send(await db.getShipsById(req.params.id));
});

//post request to create a ship
router.post('/', async (req, res, next) => {
    res.send(await db.createShip(req.body));
});

//put request to update an existin ship
router.put('/:id', async (req, res, next) => {
    res.send(await db.updateShip(req.body, req.params.id));
});

//delete request
router.delete('/:id', async (req, res, next) => {
    res.send(await db.deleteShip(req.params.id));
});


module.exports = router;