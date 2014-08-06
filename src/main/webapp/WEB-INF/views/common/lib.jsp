<%--
  Created by IntelliJ IDEA.
  User: wangj_000
  Date: 2014/8/6
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <c:set var="ctx" value="<%= request.getContextPath()%>" scope="application" ></c:set>

    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources/css/easyui/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources/css/easyui/icon.css"/>

    <script src="<%= request.getContextPath()%>/resources/js/jquery.min.js"></script>
    <script src="<%= request.getContextPath()%>/resources/js/jquery.easyui.min.js"></script>
    <script src="<%= request.getContextPath()%>/resources/js/easyui-lang-zh_CN.js"></script>


</head>
<body>

</body>
</html>
