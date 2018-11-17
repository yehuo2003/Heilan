var btns = $Cls("my_btn3");
//购物车结算
for(var i=0;i<btns.length;i++){
    var btn = btns[i];
    btn.onclick = function () {
      var btn = this;
      var span = btn.parentNode.children[1];
        var n = parseInt(span.innerHTML);
        if(btn == span.nextElementSibling)
        n++;
        else if(n>1)
        n--;
        span.innerHTML = n;
        //查找要修改的元素
        var sum = btn.parentNode.nextElementSibling;
        var price = parseFloat(
            btn.parentNode
               .previousElementSibling
               .innerHTML
               .slice(1)
        )
        var sub = price*n;
        sum.innerHTML = `￥${sub.toFixed(2)}`; 
    
        //查找要修改的元素
        var Total = my$("sum");
        var num = my$("priceNum")
        var tds = $Cls("price")
        var total = 0;  
        for(var i=0;i<tds.length;i++){
            var td = tds[i]     
        //for(var td of tds){
            total+=parseFloat(td.innerHTML.slice(1))
            num.innerHTML = tds.length;
        }
        Total.innerHTML = `￥${total.toFixed(2)}`;
  }      
}
 
//删除商品
$(".my_line_height button.btn-danger").click(function(){
    var  $btn = $(this);
    var $parent = $btn.parent().parent();
    $parent.remove();
})