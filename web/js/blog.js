$(document).ready(function(){
  tinymce.init({
    selector: 'textarea#content',
    plugins: 'a11ychecker advcode casechange export formatpainter image editimage linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tableofcontents tinycomments tinymcespellchecker',
    toolbar: 'casechange checklist image editimage table tableofcontents',
    toolbar_mode: 'floating',
    statusbar: false,
    menubar: false,
    tinycomments_mode: 'embedded',
    tinycomments_author: 'Kamil Konieczny',
  });
})


function resizeCover(){
  $el = $(".post-header")
  if(!$el || !$el.get(0)) return;

  $offset = $el.offset().left;

  $el = $(".header-cover")
  $el.css("margin-left", ($offset*-1) +"px")
  $el.css("margin-right", ($offset*-1) +"px")
}

$(document).ready(resizeCover)
$( window ).resize(resizeCover);
