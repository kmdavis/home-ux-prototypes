div class: "footer-wrapper", ->
  div class: "footer", ->
    div class: "badge", ->
      span class: "logo", "GILT"
      span class: "copyright-notice",
        "&copy; 2007 - #{(new Date()).getFullYear()} Gilt Groupe, Inc. All Rights Reserved."
    ul ->
      li ->
        strong "Customer Service"
        a href: "#", "Feedback"
        a href: "#", "Return Policy"
        a href: "#", "Shipping & Tax"
      li ->
        strong "About"
        a href: "#", "Careers"
        a href: "#", "FAQ"
        a href: "#", "Style Directory"
      li ->
        strong "Policies"
        a href: "#", "Terms of Service"
        a href: "#", "Privacy"
        a href: "#", "Security"
