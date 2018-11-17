//护眼模式（预留）
var bd = document.body;
my$("btn").onclick = function () {
    bd.className = bd.className != "cls" ? "cls" : "";
}

//购物车
$(".btn-danger").click(function(){
    //先初始化购物车数量为0
    var cateNum = 0;
    var addImg = $(".addImg");
    var btn = $("#btn")
    //克隆一张小图片
    var cloneImg = addImg.clone()
    cloneImg.css({
        "position":"absolute",
        "top":addImg.offset().top,
        "left":addImg.offset().left,
        "z-index":10,
        "opacity":".5"
    });
    cloneImg.appendTo($("body")),animate({
        "top":btn.offset().top,
        "left":btn.offset().left
    },2000,function(){
        cloneImg.animate({
            //添加购物车后消失
            "width":0,
            "height":0
        },function(){
            //添加成功后，购物车数量+1
            $("cateNum").html(++cateNum);
            $(this).detach();//移除元素
        })
    })
    //.cloneImg.css({
    //    "position":"absolute",
    //    "top":addImg.offset().top,
    //    "left":addImg.offset().left,
    //    "z-index":10,
    //    "opacity":".5"
    //}).appendTo($("body")).animate({
    //    "width":0,"height":0
    //},function(){
    //    $("cateNum").html(++cateNum);
    //    $(this).detach();
    //})
})