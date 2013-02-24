# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


console.log("Flight Controller Script");
$ ->
  self.motor1 = $("#flight_configuration_motor1")
$ ->
  self.motor2 = $("#flight_configuration_motor2")
$ ->
  self.motor3 = $("#flight_configuration_motor3")
$ ->
  self.motor4 = $("#flight_configuration_motor4")
$ ->
  self.correctionVector = $("#flight_configuration_correction_vector")
$ ->
  self.correctionLimit = $("#flight_configuration_correction_limit")
$ ->
  self.controlStatus = $("#flight_configuration_control_status")
self = this;

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
    $("input[type='number']").each ->
      $(this).val -> 0
    saveForm()

$ ->
  $("#default").click ->
    $("input[id*='flight_configuration_motor']").each ->
      $(this).val -> 30
    self.correctionVector.val -> 5
    self.correctionLimit.val -> 5
    self.controlStatus.val -> 1
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

$ ->
  $(".increment").click (e) ->
    e.preventDefault();
    $(this).parent().find("input").val ->
      parseInt($(this).parent().find("input").val()) + 1
    saveForm();

$ ->
  $(".decrement").click (e) ->
    e.preventDefault();
    $(this).parent().find("input").val ->
      parseInt($(this).parent().find("input").val()) - 1
    saveForm();

fnAddValueToAllMotors = (value) ->
  $("input[id*='flight_configuration_motor']").each ->
    $(this).val -> value + parseInt($(this).val())

dataURL = "/configuration";

autoupdate = () ->
  $.get(dataURL,
  (response)->
    $ ->
      self.isBeingChanged = $("input:focus").length == 0
    if self.isBeingChanged
      self.motor1.val -> response.motor1;
      self.motor2.val -> response.motor2;
      self.motor3.val -> response.motor3;
      self.motor4.val -> response.motor4;
      self.correctionVector.val -> response.correction_vector;
      self.correctionLimit.val -> response.correction_limit;
      self.controlStatus.val -> response.control_status;
  )

setInterval(autoupdate, 500)