var shell = require('shelljs');
var path = require('path');

console.log("Updating from git");
shell.exec('git pull');

console.log("Updating pip modules");
shell.exec("pip install -r requirements.txt");
shell.exec("flask db upgrade");

console.log("Installing bower");
shell.exec("bower install");

console.log("Setting up gulp");
gulpfile = path.join('node_modules', 'gulpfile', 'result', 'gulpfile.js');
shell.cp(gulpfile, 'gulpfile.js');
