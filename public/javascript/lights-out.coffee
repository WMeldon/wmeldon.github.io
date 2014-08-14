---
# this ensures Jekyll reads the file to be transformed into CSS later
# only Main files contain this front matter, not partials.
---

body = document.getElementsByTagName('body')[0]
lightsAreOut = ->
  if body.className.match(/(?:^|\s)lights-out(?!\S)/) isnt null
    'Dark'
  else
    'Light'

lightsOn = ->
  body.className = body.className.replace( /(?:^|\s)lights-out(?!\S)/g , '' )

lightsOff = ->
  body.className += ' lights-out'

toggle = (e) ->
  state = lightsAreOut()
  if state is 'Dark' then lightsOn() else lightsOff()
  e.srcElement.innerHTML = state

lightSwitch = document.getElementById "toggle-lights"

lightSwitch.onclick = (e) =>
  toggle(e)

