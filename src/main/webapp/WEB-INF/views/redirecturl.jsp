<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<html>
<head>
<script>
	function Urlredirect(redirectUrl){
		window.location.href= redirectUrl;
	}
</script>


<body onload="Urlredirect('${redirectUrl}')">
	 URL Redirect
</body>
</head>
</html>