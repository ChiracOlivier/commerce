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

            <label for="dateCommande">Date <span class="requis">*</span></label>
            <input type="text" id="dateCommande" name="dateCommande" value="" size="30" maxlength="30" disabled />
            <br />

            <label for="montantCommande">Montant <span class="requis">*</span></label>
            <input type="text" id="montantCommande" name="montantCommande" value="" size="30" maxlength="30" />
            <br />

            <label for="modePaiementCommande">Mode de paiement <span class="requis">*</span></label>
            <input type="text" id="modePaiementCommande" name="modePaiementCommande" value="" size="30" maxlength="30" />
            <br />
            <label for="statutPaiementCommande">Statut du paiement</label>
            <input type="text" id="statutPaiementCommande" name="statutPaiementCommande" value="" size="30" maxlength="30" />
            <br />

            <label for="modeLivraisonCommande">Mode de livraison <span class="requis">*</span></label>
            <input type="text" id="modeLivraisonCommande" name="modeLivraisonCommande" value="" size="30" maxlength="30" />
            <br />

            <label for="statutLivraisonCommande">Statut de la livraison</label>
            <input type="text" id="statutLivraisonCommande" name="statutLivraisonCommande" value="" size="30" maxlength="30" />
            <br />
        </fieldset>
        <input type="submit" value="Valider"  />
        <input type="reset" value="Remettre à zéro" /> <br />
    </form>
</div>
</body>
</html>