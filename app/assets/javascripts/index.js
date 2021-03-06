$(document).ready(function() {

// set up page on load
  $(".submit-form-container").hide();
  $("#table").tablesorter( {
    headers: {
      1: {sorter: false},
      2: {sorter: false},
      3: {sorter: false},
    }
    });

// edit toggler & cancel -> show/hide edit form via CSS class switching
    $(".edit-toggler").click(function () {
      $(this).parent().toggleClass("editing", 1000, "easeOutSine");
    });

    $(".cancel").click(function () {
      $(this).parent().parent().toggleClass("editing", 1000, "easeOutSine");
    });

// submit toggler -> click to open submit form
  $(".submit-toggler").click(function () {
      $(".submit-form-container").slideToggle(450, function() {
    });
  });

// scroll to error messages if present
  var error_anchor = document.getElementById('error-anchor');
  if ($(".error-list").length > 0) {
    error_anchor.scrollIntoView();
  }

// alternating format on table rows
  // $("#table tbody tr:even").css("background-color", 'rgba(0, 0, 0, 0.15)');

// remove repeating dates
  var seen = {};
  $('table tbody tr .date-row').each(function() {
    var txt = $(this).text();
    if (seen[txt])
        $(this).text("");
    else
        seen[txt] = true;
  });

// attempt to combine hiding repeated dates and apply bkgd color to date-showing rows
  // var seen = {};
  // $('table tbody tr .date-row').each(function() {
  //   var txt = $(this).text();
  //   var par = $(this).parent();
  //   if (seen[txt])
  //       $(this).text("");
  //       par.css('backgroundColor','blue');
  //   else
  //       seen[txt] = true;
  //       par.css('backgroundColor','red');
  // });

});
