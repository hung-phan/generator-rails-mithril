###* @jsx m ###
require [
  "jquery"
  "mithril"
  "home/home"<% if (includeLodash) { %>
  "lodash"<% } %>
  "bootstrap"
], ($, m, home) ->
  $(document).ready ->

    #setup routes to start w/ the `#` symbol
    m.route.mode = "hash"

    #routing configuration
    m.route document.getElementById("ui-router"), "/",
      "/": home

    return

  return
