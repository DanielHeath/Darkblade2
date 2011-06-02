$ ->
  $('input[type=radio][data-for]').change (e) ->
    radio = $(e.target)
    labelValue = radio.parents(".field").find("label.#{radio.data('for')} span.value").first()
    labelValue.text(radio.val())
    
    fieldset = radio.parents(".fieldset").first()
    inputs = fieldset.find("input:checked")
    scores = ($(input).val() for input in inputs)
    points = 0
    if fieldset.is('.attributes')
      score_adj = 1
      allowedScores = [3, 4, 5]
    else if fieldset.is('.skills')
      score_adj = 0
      allowedScores = [3, 7, 11]
    else if fieldset.is('.magic')
      score_adj = 0
      allowedScores = [1, 2, 3]
    else
      return true

    for score in scores
      score = parseInt(score, 10)
      if score > score_adj
        points += score - score_adj
      if score > 4
        points += 1

    fieldset.find('.field.points .value').text(points)
    fieldset.find('.field.points').attr('data-value', points)
    
    section = fieldset.parents('.section').first()
    sectionPoints = for points in section.find('.field.points')
      pointsThisSection = parseInt $(points).attr('data-value'), 10
      idx = allowedScores.indexOf(pointsThisSection)
      if idx > -1
        allowedScores.splice(idx, 1)
        $(points).removeClass("invalid")
      else
        section.find(".field.points[data-value='#{pointsThisSection}']").addClass("invalid")
        
    if allowedScores.length is 0
      section.addClass "valid"
    else
      section.removeClass "valid"
  
  $('input[type=radio]:checked').change()


