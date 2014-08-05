define [
    "jquery"
    "underscore"
    "backbone"
    "hashers/md5"
    "hashers/sha1"
    "hashers/sha256"
], (
    $
    _
    Backbone
    md5
    sha1
    sha256
) ->

    Backbone.Model.extend
        defaults:
            input: "hello world"

        initialize: (options) ->
            @on "change:input", (m, v) =>

                md5 v, (hash) => @set('hash_md5', hash)
                sha1 v, (hash) => @set('hash_sha1', hash)
                sha256 v, (hash) => @set('hash_sha256', hash)



