###* @jsx m ###
define ["mithril"], (m) ->
  "use strict"

  #namespace for <%= name %>
  <%= name %> = {}

  #model
  <%= name %>.<%= name %> = (text) ->
    @text = m.prop(text)
    @done = m.prop(false)
    return

  <%= name %>.AppList = Array

  #controller
  <%= name %>.controller = ->
    @list = new <%= name %>.AppList()
    @text = m.prop("")
    @add = (->
      if @text()
        @list.push new <%= name %>.<%= name %>(@text())
        @text ""
      return
    ).bind(this)
    return


  #view
  <%= name %>.view = (ctrl) ->
    `<div>
      This is the template for <%= name %>
    </div>`

  <%= name %>
