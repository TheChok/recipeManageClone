<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>save</title>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

	<form action="/member/save" method="post" id="saveForm">
		<input type="text" name="memberEmail" 	 placeholder="이메일" id="memberEmail" onblur="emailCheck();" />
		<p id="check-result"></p>
		<input type="text" name="memberPassword" placeholder="비밀번호" />
		<input type="text" name="memberName" 	 placeholder="이름" />
		<input type="text" name="memberAge" 	 placeholder="나이" />
		<input type="text" name="memberMobile" 	 placeholder="전화번호" />
	</form>
	<button onclick="submit();">회원가입</button>
	
</body>
<script>
	const submit = () => {
        const email	= document.getElementById("memberEmail").value;
		
		$.ajax({
            type	: "post",
            url		: "/member/email-check",
            data	: {
                "memberEmail": email
            },
            success	: function(res) {
                if(res == "ok") {
					$("#saveForm").submit();
                } else {
					alert('입력하신 이메일이 올바르지 않습니다.');
                }
            },
            error	: function(err) {
                console.log("에러발생", err);
            }
        });
	}
	
	/*	
		입력한 이메일 값을 서버로 전송하여
		DB에 같은 값이 있는지 체크한 후 화면에 표시
	*/
	const emailCheck = () => {
        const email 		= document.getElementById("memberEmail").value;
        const checkResult 	= document.getElementById("check-result");
        
        console.log("입력한 이메일", email);
        
        $.ajax({
            // 요청방식: post, url: "email-check", 데이터: 이메일
            type	: "post",
            url		: "/member/email-check",
            data	: {
                "memberEmail": email
            },
            success	: function(res) {
                console.log("요청성공", res);
                
                if (res == "ok") {
                    console.log("사용가능한 이메일");
                    checkResult.style.color	= "green";
                    checkResult.innerHTML 	= "사용가능한 이메일";
                    
                } else {
                    console.log("이미 사용중인 이메일");
                    checkResult.style.color = "red";
                    checkResult.innerHTML 	= "이미 사용중인 이메일";
                    $("#memberEmail").html('');
                }
            },
            error	: function(err) {
                console.log("에러발생", err);
            }
        });
    }
	
</script>
</html>