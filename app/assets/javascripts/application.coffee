#= require jquery
#= require unpoly
#= require unpoly-migrate
#= require unpoly-bootstrap4
#= require ./detect_cache
#= require jquery_ujs

up.compiler '.content', ->
  span = document.createElement('span')
  span.innerText = new Date().toString()
  document.body.append(span)

