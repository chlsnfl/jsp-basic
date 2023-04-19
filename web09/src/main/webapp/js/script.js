$(function(){
   window.onload = getCookie;
      
   $("#loginForm").submit(function(){
      //e.preventDefault();
      let rv = true;
      const regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      
      if($("#user").val() == "") {
         alert("이메일을 입력하세요.");
         $("#user").focus();
         return rv = false;
      }
       if($("#user").val().match(regEmail) == null) {
         alert("이메일 형식이 아닙니다. 올바로 입력하세요.");
         $("#user").focus();
         return rv = false;      
      }
      if($("#pass").val() == "") {
         alert("비밀번호를 입력하세요.");
         $("#pass").focus();
         return rv = false;
      }
      const isChk = $("#chk").is(":checked");
      if(isChk == true) {
         $.cookie("userid", $("#user").val());
      }
      
      return rv;
   })
});

function getCookie(){
   const mycook = $.cookie("userid");
   if(mycook) {
      $("#user").val(mycook);
   }
}