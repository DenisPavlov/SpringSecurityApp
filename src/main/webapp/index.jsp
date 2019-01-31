<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<body>
<h2>Hello World!</h2>
<h3><a href="${contextPath}/registration">registration</a></h3>
<h3><a href="${contextPath}/login">login</a></h3>
<h3><a href="${contextPath}/admin">admin</a></h3>
</body>
</html>
