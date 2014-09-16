
processHAR = (data) ->

  har = JSON.parse(data)
  YSlow = require('yslow').YSLOW
  doc = require('jsdom').jsdom()
  res = YSlow.harImporter.run(doc, har, 'ydefault')
  content = YSlow.util.getResults(res.context, 'basic')

  console.log content


exports.processHAR = processHAR