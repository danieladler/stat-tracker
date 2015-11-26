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

  // SANDBOX: scroll to error messages if present
  // if ($(".error-list").length == 0) {
  //   $('html, body').animate({
  //        scrollTop: ($('.error-list').offset().top - 300)
  //   }, 2000);


  // if ($(".error-list").length == 0) {
  //    $('html, body').animate({
  //
  //     })
  //   } else {
  //   $('html, body').animate({
  //        scrollTop: ($('.error-list').offset().top - 300)
  //   }, 2000);
  // }

  // alternating format on table rows
  $("#table tbody tr:even").css("background-color", 'rgba(0, 0, 0, 0.15)');

  // remove repeated dates
  var seen = {};
  $('table tbody tr .date-row').each(function() {
    var txt = $(this).text();
    if (seen[txt])
        $(this).text("");
    else
        seen[txt] = true;
  });

});
