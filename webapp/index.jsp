<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="dwr/util.js"></script>
<script type="text/javascript" src="dwr/engine.js"></script>
<script type="text/javascript" src="dwr/interface/messagePush.js"></script>

<script type="text/javascript">
</script>

</head>
<body>
	<img alt="" src="${ctx }/QRCode.do">
	
	<input type="hidden" value="${uuid }">
	<!-- <table border="0">
		<tr>
			<td><input id="content" type="text" /></td>
			<td><input id="send" type="button" value="send" /></td>
		</tr>
	</table>
	<script type="text/javascript">
		$("#send").click(function() {
			var content = $("#content").val();
			messagePush.send(content);
		});
	</script> -->
</body>
</html>