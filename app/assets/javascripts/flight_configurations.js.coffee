# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


console.log("Flight Controller Script");

saveForm = () ->
  $.post(
    $("form").attr('action')
    $("form").serialize()
    (data, textStatus, jqXHR) ->
      processData(data, textStatus, jqXHR)
  )
  return false
$ ->
  $("div.actions input[name='commit']").click (e)->
    e.preventDefault();
    console.log("Clicked on UPDATE");
    saveForm()


processData = (data, textStatus, jqXHR) ->
  #  console.log(data)

$ ->
  $("#stop").click ->
    $("input[id*='flight_configuration_motor']").each ->
      $(this).val -> 0
    saveForm()


$ ->
  $("#increment").click (e) ->
    e.preventDefault();
    console.log("Incrementing...");
    fnAddValueToAllMotors(1);
    saveForm()

$ ->
  $("#decrement").click (e)->
    e.preventDefault()
    console.log("Decrementing...")
    fnAddValueToAllMotors(-1)
    saveForm()


fnAddValueToAllMotors = (value) ->
  $("input[id*='flight_configuration_motor']").each ->
    $(this).val -> value + parseInt($(this).val())

