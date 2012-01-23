fs = require "fs"

module.exports = (app, config) ->
  app.get "/ux/:id", (req, res) ->
    try
      data = JSON.parse(fs.readFileSync "#{__dirname}/../../config/data/#{req.params.id}.json", "utf8")

    res.render "ux_pages/#{req.params.id}",
      layout: "../layout"
      locals: data || {}
