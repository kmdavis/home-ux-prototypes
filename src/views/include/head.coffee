head ->
  meta charset: "utf-8"
  meta { "http-equiv": "X-UA-Compatible", content: "IE=edge,chrome=1" }

  if @pageTitle?
    title "#{@pageTitle} -- Home UX Prototype"
    meta name: "page-topic", content: @pageTitle
    meta property: "og:title", content: @pageTitle
  else
    title "Home UX Prototype"

  meta name: "application-name", content: "Home UX Prototype"
  meta property: "og:site_name", content: "Home UX Prototype"
  meta property: "og:url", content: "TODO"

  if @pageDescription?
    meta name: "description", content: @pageDescription
  else
    meta name: "description", content: "TODO"

  link rel: 'stylesheet',      type:'text/css',   href: 'http://fonts.googleapis.com/css?family=Droid+Sans'
  link rel: "stylesheet/less", type: "text/less", href: "/css/package.less"

  script type: "text/javascript", src: "/js/vendor/less.js"
  script type: "text/javascript", src: "/js/vendor/modernizr.js"
  script type: "text/javascript", src: "/js/vendor/require.js"
  coffeescript ->
    require
      baseUrl: "/js"