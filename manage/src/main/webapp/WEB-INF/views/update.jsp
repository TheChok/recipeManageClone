<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>update</title>
</head>
<body>
	<form action="/member/update" method="post" name="updateForm">
		<table style="text-align:left;">
			<tr>
				<th>id</th>
				<td><input type="text" name="id"  value="${member.id }" readonly/></td>
			</tr>
			<tr>
				<th>email</th>
				<td><input type="text" name="memberEmail" value="${member.memberEmail }" readonly/></td>
			</tr>
			<tr>
				<th>password</th>
				<td><input type="text" name="memberPassword" id="memberPassword"/></td>
			</tr>
			<tr>
				<th>name</th>
				<td><input type="text" name="memberName" value="${member.memberName }" readonly/></td>
			</tr>
			<tr>
				<th>age</th>
				<td><input type="text" name="memberAge" value="${member.memberAge }"/></td>
			</tr>
			<tr>
				<th>mobile</th>
				<td><input type="text" name="memberMobile" value="${member.memberMobile }"/></td>
			</tr>
		</table>
		<input type="button" value="수정" onclick="update()" />
	</form>
</body>
<script>
	const update = () => {
		const passwordDB = '${member.memberPassword}';
		const password = document.getElementById("memberPassword").value;
		if(passwordDB == password) {
			document.updateForm.submit();
		} else {
			alert('비밀번호가 일치하지 않습니다.');
			return false;
		}
	}
</script>
</html>