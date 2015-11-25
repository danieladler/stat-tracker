$(document).ready(function() {

  // set up page on load
  $(".submit-form-container").hide();

  // edit toggler & cancel -> show/hide edit form via CSS class switching
  $(".edit-toggler").click(function () {
    $(this).parent().toggleClass("editing");
  });

  $(".cancel").click(function () {
    $(this).parent().parent().toggleClass("editing");
  });

  // submit toggler -> click to open submit form
  $(".submit-toggler").click(function () {
    $(".submit-form-container").toggle();
  });

});
