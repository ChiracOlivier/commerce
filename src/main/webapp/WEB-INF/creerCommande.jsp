<%--
  Created by IntelliJ IDEA. and update by me:ChiracOlivier
  User: pc
  Date: 19/08/2019
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Création d'une commande</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />
</head>
<body>
<c:import url="/inc/menu.jsp" />
<div>
    <form method="get" action="<c:url value="/creationCommande"/>">
        <fieldset>
            <legend>Informations client</legend>
            <c:import url="/inc/inc_client_form.jsp" />
        </fieldset>
        <fieldset>
            <legend>Informations commande</legend>

        