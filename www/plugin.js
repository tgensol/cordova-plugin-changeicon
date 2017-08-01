var exec = require('cordova/exec');

exports.getCurrent = function(success, error) {
    exec(success, error, "ChangeIcon", "getCurrent", []);
};

exports.change = function(icon, success, error) {
    exec(success, error, "ChangeIcon", "change", [icon]);
};

exports.reset = function(success, error) {
    exec(success, error, "ChangeIcon", "reset", []);
};