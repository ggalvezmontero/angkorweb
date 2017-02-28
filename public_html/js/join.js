function checkbox_change(checkbox, content){
  if($(checkbox).is(":checked"))
    $(content).show();
  else
    $(content).hide();
}

$("#c1").change(function(){
  checkbox_change("#c1","#consultoria");
});
$("#c2").change(function(){
  checkbox_change("#c2","#tecInf");
});
$("#c3").change(function(){
  checkbox_change("#c3","#outsoursing");
});
$("#c4").change(function(){
  checkbox_change("#c4","#administracion");
});

var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].onclick = function() {
    this.classList.toggle("active");

    var panel = this.nextElementSibling;
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 

    var icon = this.firstElementChild;
    icon.classList.toggle("down");
  }
}
