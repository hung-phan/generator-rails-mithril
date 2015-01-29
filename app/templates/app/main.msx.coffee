###* @jsx m ###
require [
  'jquery'
  'mithril'
  'home/home'<% if (includeLodash) { %>
  'lodash'<% } %>
  'bootstrap'
  'jquery_ujs'
], ($, m, home) ->

  $(document).ready ->
    # binding mithril component
    require ["mithril_ujs"], (->)

    #setup routes to start w/ the `#` symbol
    m.route.mode = "hash"

    #routing configuration
    m.route document.getElementById("route"), "/",
      "/": home
