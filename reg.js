$("input:checkbox").click(function(){
  var $chb = $(this)
  $(".my_btn1")
  .prop(
    "disabled",
    !($chb.prop("checked"))//启用
  )
})