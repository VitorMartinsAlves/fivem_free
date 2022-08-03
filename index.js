var child_process = require('child_process');

child_process.exec('start.bat', function(error, stdout, stderr) {
    console.log(stdout);
});