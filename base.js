$("#box .nav-item").mouseenter(function(){
    var idx = $(this).index()
    $("#content>ul>li").eq(idx).show().siblings().hide()
});
$(".navBox").mouseleave(function(){
    $("#content>ul>li").hide();
})