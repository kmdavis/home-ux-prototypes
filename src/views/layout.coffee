doctype 5
html ->
  partial "include/head"
  body class: "theme-#{@theme or 'default'}", ->
    partial "include/header"
    div class: "page-container", ->
      div class: "content-wrapper", ->
        div class: "content-container", ->
          @body
    partial "include/footer"