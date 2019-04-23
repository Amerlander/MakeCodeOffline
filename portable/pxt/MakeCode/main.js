const pxt = require('pxt-core')
const path = require('path')

const cliPath = path.join(process.cwd(), "node_modules/pxt-calliope") 

pxt.mainCli(cliPath, ["serve"])