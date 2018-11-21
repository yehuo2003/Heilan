$(function(){
  $("<link rel='stylesheet' href='css/header.css'>").appendTo("head");
  $.ajax({
    url:"header.html",
    type:"get",
    success: function(res) {
      //res->html片段
      $(res).replaceAll("#header")
      $("#box .nav-item").mouseenter(function(){
        var idx = $(this).index()
        $("#content>ul>li").eq(idx).show().siblings().hide()
    });
      $(".navBox").mouseleave(function(){
          $("#content>ul>li").hide();
      })    
    }
  })
})