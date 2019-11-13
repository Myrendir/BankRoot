<%@ page import="java.util.List" %>
<%@ page import="com.models.Categories" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/head.jsp" %>
<%@include file="includes/session.jsp" %>
<%@include file="includes/navbar.jsp" %>

<form action="Ajout-Produit" method="post">
    <select name="categorie_id">
        <option>Catégorie</option>
        <%
            @SuppressWarnings("unchecked")
            List<Categories> categories = (List<Categories>) request.getAttribute("resultat");

            if (categories != null) {
                for (Categories categorie : categories) {
        %>
        <option value="<%= categorie.getId() %>"><%= categorie.getNom() %>
        </option>
        <%
                }
            }
        %>
    </select><br>
    <input type="text" name="nom" placeholder="Nom">
    <input type="text" name="taux" placeholder="Taux">
    <input type="text" name="frais" placeholder="Frais"><br>
    <textarea name="description" cols="67" rows="5" placeholder="Description"></textarea><br>
    <input type="submit">
</form>

<%@include file="includes/footer.jsp" %>