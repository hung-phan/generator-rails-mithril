###* @jsx m ###
require [
  "jquery"
  "mithril"
  "home/home"<% if (includeLodash) { %>
  "lodash"<% } %>
  "bootstrap"
  "jquery_ujs"
], ($, m, home) ->

	# binding mithril component
	require ["mithril_ujs"], (->)

  $(document).ready ->

    #setup routes to start w/ the `#` symbol
    m.route.mode = "hash"

    #routing configuration
    m.route document.getElementById("route"), "/",
      "/": home

    return

  return
