
$(document).ready(function(){
  $("#Continue1").click(function(){
    $("#Modal1").modal();
  });
  $("#Continue2").click(function(){
    $("#Modal2").modal();
  });
  $("#Continue3").click(function(){
    $("#Modal3").modal();
  });
  $("#backtoTop").click(function() {
    $(window).scrollTop(0);
    });
});