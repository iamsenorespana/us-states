var fs = require('fs');
var data = require('../data/states.json');
var values = require('object.values');

if (!Object.values) {
  values.shim();
}

fs.truncate('data/states.sql', 0, function() {

  fs.appendFile('data/states.sql', 'TRUNCATE TABLE `states`;\n');

  for (var i = 0; i < data.length; i++) {
    var query = 'INSERT INTO `states` (`' + Object.keys(data[i]).join('`, `') + '`) VALUES ("' + Object.values(data[i]).join('", "') + '");\n';
    fs.appendFile('data/states.sql', query.replace(/""/g, 'null'));
  }
});