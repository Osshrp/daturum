$(function() {
  $('blockquote a').click(function(event){
    console.log(event.target.id)
    event.preventDefault();
    $('a#' + event.target.id).hide();
    $('div#answer-form-' + event.target.id).fadeToggle(600);
  });
});
