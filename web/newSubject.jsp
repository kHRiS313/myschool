<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Добавление нового предмета</h1>
        <a href="index.jsp">Главная страница</a><br>
        <p>${info}</p>
        <p>Вошедший пользователь: ${user.login}</p>
        <form action="addSubject" method="POST">
            Название предмета: <input type="text" name="name"><br>
            Учитель: <input type="text" name="teacher"><br>
            <input type="submit" value="Добавить предмет">
        </form>

