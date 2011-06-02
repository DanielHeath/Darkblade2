$ ->
  $('input[type=radio][data-for]').change (e) ->
    radio = $(e.target)
    labelValue = radio.parents(".field").find("label.#{radio.data('for')} span.value").first()
    labelValue.text(radio.val())
    console.log radio, labelValue

