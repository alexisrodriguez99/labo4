const express = require('express');

const path = express();

const path = require('path');

app.use(express.static(dirname + '/angularapp'));

app.listen(process.env.PORT || 8080);

app.get('/*', function(req, res) {
    res.sendFile(path.join(dirname + '/angularapp/index.html'));
});

console.log('Build Successful');