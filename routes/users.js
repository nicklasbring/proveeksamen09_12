var express = require('express');
var router = express.Router();
var weatherData = require('../public/javascripts/weatherData');

//This user endpoint is now being used as an endpoint for weather data api
router.get('/', async(req, res, next) => {
  res.render('weatherData', { 
    weatherData: await weatherData.getWeatherData()
  });
});

module.exports = router;
