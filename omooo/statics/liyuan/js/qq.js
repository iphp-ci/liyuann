$(document).ready(function(){

    $(".qqside ul li").hover(function(){
        $(this).find(".qqsidebox").stop().animate({"width":"124px"},200).css({"opacity":"1","filter":"Alpha(opacity=100)","background":"#ae1c1c"})    
    },function(){
        $(this).find(".qqsidebox").stop().animate({"width":"54px"},200).css({"opacity":"0.8","filter":"Alpha(opacity=80)","background":"#000"})   
    });
    
    $("#closeQQ").on("click",function(){
    	$(".qqside").fadeToggle("slow","linear");
    })
    $(".closeSaoma").on("click",function(){
    	$(".saoyisaodiv").fadeToggle("slow","linear");
    })
});

//回到顶部
function goTop(){
    $('html,body').animate({'scrollTop':0},600);
}