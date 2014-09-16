path = require('path')
childProcess = require('child_process')
phantomjs = require('phantomjs')
binPath = phantomjs.path

if process.argv.length < 3
    console.log 'Usage: yslownetsniff.coffee <some URL>'
    process.exit 1

url = process.argv[2]

childArgs = [
  path.join(__dirname, '../', 'netsniff.js'),
  url
]

ha
childProcess.execFile(binPath, childArgs, (err, stdout, stderr) ->
  console.log stdout
)


