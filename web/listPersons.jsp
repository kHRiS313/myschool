<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Список персон</h1>
        <a href="index.jsp">Главная страница</a><br>
        <p>${info}</p>
        <p>Вошедший пользователь: ${user.login}</p>
        <ul>
            <c:forEach var="person" items="${listPersons}">
                <li>
                    Персона: ${person.name} 
                    <a href="editPerson?id=${person.id}">Изменить</a>
                </li>
            </c:forEach>
        </ul>
