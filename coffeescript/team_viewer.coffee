window.TenForward ||= {}

class TenForward.TeamViewer
  constructor: ->
    @initListeners()

  initListeners: ->
    $('.bio-button').on 'click', @showBio
    $('.bio .close').on 'click', @hideBio
    $('body').on 'click', @hideBio

  showBio: (ev) ->
    $('.bio-buttons').hide()
    name = $(ev.target).data().name
    $(".bio[data-name='#{name}']").show()
    ev.stopPropagation()

  hideBio: (ev) ->
    $target = $(ev.target)
    if $target.hasClass('close') || $target.closest('.bio').length is 0
      $('.bio-buttons').show()
      $(".bio").hide()
