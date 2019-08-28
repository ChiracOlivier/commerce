<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Affichage d'une commande</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />
</head>
<body>
<c:import url="/inc/menu.jsp" />
<div id="corps">
    <p class="info">${ form.resultat }</p>
    <p>Client</p>
    <p>Nom : <c:out value="${ commande.client.nom }"/></p>
    <p>Prénom : <c:out value="${ commande.client.prenom }"/></p>
    <p>Adresse : <c:out value="${ commande.client.adresse }"/></p>
    <p>Numéro de téléphone : <c:out value="${ commande.client.telephone }"/></p>
    <p>Email : <c:out value="${ commande.client.email }"/></p>
    <p>Commande</p>
    <p>Date  : <c:out value="${ commande.date }"/></p>
    <p>Montant  : <c:out value="${ commande.montant }"/></p>
    <p>Mode de paiement  : <c:out value="${ commande.modePaiement }"/></p>
    <p>Statut du paiement  : <c:out value="${ commande.statutPaiement }"/></p>
    <p>Mode de livraison  : <c:out value="${ commande.modeLivraison }"/></p>
    <p>Statut de la livraison  : <c:out value="${ commande.statutLivraison }"/></p>
</div>
</body>
</html>