var shell = require('shelljs');

console.log("Updating from git");
shell.exec('git pull');

console.log("Installing bower");
shell.exec("bower install");
