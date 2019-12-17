var fetch = require("node-fetch");

//module that fetches an weather api
module.exports.getWeatherData = () => {
    return fetch('https://vejr.eu/api.php?location=Copenhagen&degree=C').then(res => res.json())
        /*This line underneath makes sure that you only get the temperature from the json object*/
        //.then(json => (json.CurrentData.temperature));
}