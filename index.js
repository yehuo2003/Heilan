var config = [
    {
        width: 400,
        top: 150,
        left: 550,
        opacity: 0,
        zIndex: 2
    },//0
    {
        width: 600,
        top: 130,
        left: 0,
        opacity: 0.3,
        zIndex: 3
    },//1
    {
        width: 800,
        top: 70,
        left: 400,
        opacity: 1,
        zIndex: 4
    },//2
    {
        width: 600,
        top: 130,
        left: 1000,
        opacity: 0.3,
        zIndex: 3
    },//3
];
//页面加载的事件
window.onload = function () {
    var flag = true;//假设所有的动画执行完毕了——锁
    //1.图片散开
    var list = my$("slide").getElementsByTagName("li");
    function assign () {
        for(var i=0;i<list.length;i++){
            //设置每个li，都要把宽，层级，透明度，left，top到达指定的目标位置
            animate(list[i],config[i],function(){
                flag = true;
            })
        }
    }
    assign();

    //右边按钮
    my$("arrRight").onclick = function () {
        if(flag){
            flag = false;
            //添加进数组的尾巴  把数组中第一个删除
            config.push(config.shift());
            assign();//重新分配
        }
    }
    //左边按钮
    my$("arrLeft").onclick = function () {
        //把最后一个删除，返回成新值加入开头
        if(flag){
            flag=false;
            config.unshift(config.pop());
            assign();
        }
    }

    //鼠标进入，左右焦点的div显示
    my$("slide").onmouseover = function () {
        animate(my$("arrow"),{"opacity":1});
    };
    //鼠标离开，左右焦点的div隐藏
    my$("slide").onmouseout = function () {
        animate(my$("arrow"),{"opacity":0});
    };
}