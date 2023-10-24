<%-- 
    Document   : machines
    Created on : 24 oct. 2023, 20:15:45
    Author     : hp

--%>

<%@page import="server.entites.Machine"%>
<%@page import="server.services.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="Machinecontroleur" method="GET">
            <fieldset>
            <legnd>Informations machine</legnd>
            <table border="0">

                    <tr>
                        <td>Réference :</td>
                        <td><input type="text" name="ref" value="" /></td>
                    </tr>
                    <tr>
                        <td>Marque</td>
                        <td><input type="text" name="marque" value="" /></td>
                    </tr>
                    <tr>
                        <td>Prix</td>
                        <td><input type="text" name="prix" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Ajouter" /><input type="reset" value="Annuler" /></td>
                    </tr>submit
                </tbody>
            </table>

           </fieldset>
        </form>
    </body>
</html>

        <form action="Machinecontroleur" method="GET">
            <fieldset>
            <legnd>Liste des machines</legnd>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Reference</th>
                        <th>Marque</th>
                        <th>Prix</th>
                        <th>Modifier</th>
                        <td>Supprimer</td>
                    </tr>
                </thead>
                <tbody>
                    <%
                    MachineService ms=new MachineService()  ;
                    for(Machine m : ms.findAll()){
                        
                    
                    %>
                    <tr>
                        <td><%= m.getId()%></td>                        
                        <td><%= m.getRef()%></td> 
                        <td><%= m.getMarque()%></td> 
                        <td><%= m.getPrix()%></td> 
                        <td><a href="Machinescontroleur?op=delete&id=<%= m.getId()%>">Supprimer</a></td>
                        <td><a href="Machinescontroleur">Modifier</a></td> 
                    </tr>
                     <%} %>
                </tbody>
            </table>


           </fieldset>
        </form>
    </body>
</html>
