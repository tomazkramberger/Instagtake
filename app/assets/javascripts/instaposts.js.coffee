$(window).scroll ->
  if ($(window).scrollTop() + $(window).height() == $(document).height())
    $('a.load-more-posts').on 'inview', (e, visible) ->
      return unless visible
      if isProcesing
        return
      isProcesing = true
      $.getScript $(@).attr('href'), (data, textStatus, jqxhr) ->
        isProcesing = false
        return
