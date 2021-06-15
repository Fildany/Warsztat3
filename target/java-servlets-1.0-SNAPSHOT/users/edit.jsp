<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>

<div class="container-fluid">
    <form method="post">
        <label>userName</label>
        <input name="userName" type="text" value="${user.userName}">
        <label>email</label>
        <input name="userEmail" type="text" value="${user.email}">
        <label>password</label>
        <input name="userPassword" type="text">
        <input type="submit">
    </form>
</div>

<%@ include file="/footer.jsp" %>
