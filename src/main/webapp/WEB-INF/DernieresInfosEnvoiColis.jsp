<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<label for="nomClient">Nom <span class="requis">*</span></label>
<input type="text" id="nomClient" name="nomClient" value="<c:out value="${client.nom}"/>" size="30" maxlength="30" />
<span class="erreur">${form.erreurs['nomClient']}</span>
<br />

