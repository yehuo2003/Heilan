//����ģʽ��Ԥ����
var bd = document.body;
my$("btn").onclick = function () {
    bd.className = bd.className != "cls" ? "cls" : "";
}

//���ﳵ
$(".btn-danger").click(function(){
    //�ȳ�ʼ�����ﳵ����Ϊ0
    var cateNum = 0;
    var addImg = $(".addImg");
    var btn = $("#btn")
    //��¡һ��СͼƬ
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
            //��ӹ��ﳵ����ʧ
            "width":0,
            "height":0
        },function(){
            //��ӳɹ��󣬹��ﳵ����+1
            $("cateNum").html(++cateNum);
            $(this).detach();//�Ƴ�Ԫ��
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