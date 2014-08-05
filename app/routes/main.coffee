crypto = require 'crypto'
makeRequireJSConfig = require '../libs/makeRequireJSconfig'

module.exports = (app) ->

    app.get '/', (req, res) ->
        requireJSConfig = makeRequireJSConfig()
        res.render 'main', requireJSConfig: requireJSConfig

    app.post '/hash/md5', (req, res) ->
        md5sum = crypto.createHash('md5')
        md5sum.update(req.body.input)
        res.send(hash: md5sum.digest('hex'))

    app.post '/hash/sha1', (req, res) ->
        md5sum = crypto.createHash('sha1')
        md5sum.update(req.body.input)
        res.send(hash: md5sum.digest('hex'))

    app.post '/hash/sha256', (req, res) ->
        md5sum = crypto.createHash('sha256')
        md5sum.update(req.body.input)
        res.send(hash: md5sum.digest('hex'))

    # create an SHA256 implementation

    # create an scrypt implementation w/ N=1024, r=1, p=1
    # salt = "salt"
