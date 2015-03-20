window.TenForward ||= {}

class TenForward.WorkViewer
  constructor: ->
    @initListeners()

  initListeners: ->
    $('.work').on 'mouseover', @showWork
    $('.work').on 'mouseout', @hideWork

  showWork: (ev) ->
    debugger
    $target = $(ev.target)
    $target.find('.screenshot').hide()
    $target.find('.description').show()

  hideWork: (ev) ->
    $target = $(ev.target).closest('.work')
    $target.find('.screenshot').show()
    $target.find('.description').hide()
