var fs = require('fs');
var obj = require('../data/states.json');
var js2xmlparser = require('js2xmlparser');

var xml = js2xmlparser.parse('states', { 'state': obj });

fs.writeFile('data/states.xml', xml);