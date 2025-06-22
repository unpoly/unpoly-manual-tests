#= require jquery
#= require unpoly
#= require unpoly-migrate
#= require unpoly-bootstrap4
#= require jquery_ujs

up.log.enable()

up.compiler '.content', ->
  span = document.createElement('span')
  span.innerText = new Date().toString()
  document.body.append(span)

