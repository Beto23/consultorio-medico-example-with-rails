// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require moment
//= require bootstrap-sprockets
//= require bootstrap-datetimepicker
//= require pickers
//= require turbolinks
//= require_tree .
var hwindow = $(window).height();
var encabezado = $(".header-home").height();
var tamañoContainer = (hwindow-encabezado);
$('.main-container').css({
  height: tamañoContainer
});
$('#err404').css({
  height: tamañoContainer
});

$('.container').css({
  "max-height": tamañoContainer + 'px',
  overflow: "auto"
});

$('body').find('input:text').addClass('form-control');
$('body').find('textarea').addClass('form-control');
$('body').find('select').addClass('form-control');

$("#consultation_fecha_1i").css({
  width: '6em'
});
$("#consultation_fecha_2i").css({
  width: '6em'
});$("#consultation_fecha_3i").css({
  width: '6em'
});
$(document).on('ready page:change', function() {
  $('.datetimepicker').datetimepicker({
    // put here your custom picker options, that should be applied for all pickers
  });
  $(function () {
      $('#datetimepicker1').datetimepicker({
        format: "YYYY-MM-DD"
      });
  });
  $('.datetimerange').each(function(){
    var $this = $(this);
    var range1 = $($this.find('.input-group')[0]);
    var range2 = $($this.find('.input-group')[1]);

    if(range1.data("DateTimePicker").date() != null)
      range2.data("DateTimePicker").minDate(range1.data("DateTimePicker").date());

    if(range2.data("DateTimePicker").date() != null)
      range1.data("DateTimePicker").maxDate(range2.data("DateTimePicker").date());

    range1.on("dp.change",function (e) {
      if(e.date)
        range2.data("DateTimePicker").minDate(e.date);
      else
        range2.data("DateTimePicker").minDate(false);
    });

    range2.on("dp.change",function (e) {
      if(e.date)
        range1.data("DateTimePicker").maxDate(e.date);
      else
        range1.data("DateTimePicker").maxDate(false);
    });
  })
});
