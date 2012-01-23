fs = require "fs"
http = require "http"
_ = require "underscore"
express = require "express"
commander = require "commander"

require "express-namespace"

config = {}

readJsonFile = (path) ->
  try
    JSON.parse(fs.readFileSync "#{__dirname}/../#{path}", "utf8")

commander
  .version(readJsonFile("package.json").version)
  .option("-c, --config <file>", "Config File")
  .option("-p, --port <n>", "Port Number", parseInt)
  .parse(process.argv)

config = readJsonFile(commander.config) if commander.config?
config.port = commander.port if commander.port?

app = express.createServer()

app.configure ->
  app.use express.errorHandler
    dumpExceptions: true
    showStack: false
  app.use express.logger
    format: "[:date] :method :url"
  app.use express.bodyParser()
  app.use express.cookieParser()
  app.use express.static "#{__dirname}/../public"
  app.register ".coffee", require("coffeekup").adapters.express
  app.set "views", "src/views"
  app.set "view engine", "coffee"
  app.use app.router

fs.readdir "#{__dirname}/controller", (err, files) ->
  console.log(err) if err
  require("./controller/#{file}") app, config for file in files if files

app.listen config.port

console.log "#{config.name} started on port #{config.port}"