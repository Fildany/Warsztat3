<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>

<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    Dane użytkowników
    <table>
        <thead>
        <tr>
            <th>
                id
            </th>
            <th>
                nazwa
            </th>
            <th>
                email
            </th>
            <th>
                akcje
            </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>
                        ${user.id}
                </td>
                <td>
                        ${user.userName}
                </td>
                <td>
                        ${user.email}
                </td>
                <td>
                    <a href='<c:url value="/user/delete?id=${user.id}"/>'>delete</a>
                    edycja pokaż
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="/footer.jsp" %>
