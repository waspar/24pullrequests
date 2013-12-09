$ ->
  projects = $('#projects').clone()
  $('#noprojects').hide()

  languages = []
  labels = []

  $('#labels a').click (e) ->
    clicked_label = $(this).data().label

    unless clicked_label?
      fetchProjects()
      resetLanguage()
      return false

    unless clicked_label in labels
      labels.push clicked_label
    else
      labels = (label for label in labels when label != clicked_label)

    unless labels.length > 0
      resetLanguage()
    else
      $('#labels li')
        .addClass('disabled')
        .find($.map(labels, (l) -> "a[data-label='#{l}']").join(','))
        .parent('li')
        .removeClass('disabled')

      filterProjects()
    return false

  $('#languages a').click (e) ->
    clicked_language = $(this).data().language

    unless clicked_language?
      fetchProjects()
      resetLanguage()
      return false

    unless e.ctrlKey or e.metaKey
      languages = [].concat(clicked_language)
    else
      unless clicked_language in languages
        languages.push clicked_language
      else
        languages = (language for language in languages when language != clicked_language)

    unless languages.length > 0
      resetLanguage()
    else
      $('#languages li')
        .addClass('disabled')
        .find($.map(languages, (l) -> "a[data-language='#{l}']").join(','))
        .parent('li')
        .removeClass('disabled')

      filterProjects()
    return false

  fetchProjects = ->
    $.ajax
      url: '/projects'
      dataType: 'script'

  generateFilterUrl = ->
    if labels.length > 0 && languages.length > 0
      url = '/projects/filter?labels='+labels.join(',')+'&languages='+languages.join(',')
    else if labels.length > 0
      url = '/projects/filter?labels='+labels.join(',')        
    else
      url = '/projects/filter?languages='+languages.join(',')
    return "url is " + url


  filterProjects = ->
    console.log generateFilterUrl()
    # $.ajax
    #   url: generateFilterUrl()
    #   dataType: 'script'

  resetLanguage = ->
      $('#languages li').removeClass('disabled')
      $('#labels li').removeClass('disabled')
      $('#projects').html(projects.find('.span12'))
      projects = $('#projects').clone()
      $('#projects').css('height', 'auto')
