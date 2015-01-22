window.TenForward ||= {}

class TenForward.TeamViewer
  constructor: ->
    #@initListeners()

  initListeners: ->
    $('.bio-button').on 'click', @showBio
    $('.bio .close').on 'click', @hideBio

  showBio: (ev) ->
    $('.bio-buttons').hide()
    name = $(ev.target).data().name
    $(".bio[data-name='#{name}']").show()

  hideBio: (ev) ->
    $('.bio-buttons').show()
    $(".bio").hide()
