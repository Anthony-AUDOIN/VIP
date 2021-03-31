let model = require("../models/vip.js");
let async = require("async");

module.exports.photos = function (request, response) {
    response.title = "Administration photos";
    response.render('photos', response);
};
