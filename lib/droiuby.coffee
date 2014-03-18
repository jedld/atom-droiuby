DroiubyView = require './droiuby-view'

module.exports =
  droiubyView: null

  activate: (state) ->
    @droiubyView = new DroiubyView(state.droiubyViewState)

  deactivate: ->
    @droiubyView.destroy()

  serialize: ->
    droiubyViewState: @droiubyView.serialize()
