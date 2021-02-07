<%-- 
    Document   : listAccount
    Created on : 5 févr. 2021, 19:27:52
    Author     : kykwy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row justify-content-md-center" style="margin-top: 50px">
                <a href="newAccount.jsp" class="badge" style="font-size: 15px"><div class="alert alert-primary" style="width: 30rem;" >
                        creation d'un compte
                    </div></a>

            </div>
            <div class="row justify-content-md-center" style="margin-top: 20px">

                <div class="card" style="width: 30rem;">
                    <div class="card-header" style="background-color: #2E7BBD; color:white">
                        Liste des comptes banquaires
                    </div>
                    <div class="card-body">

                      
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Numero de compte</th>
                                    <th scope="col">Nom</th>
                                    <th scope="col">Prénom(s)</th>
                                    <th scope="col">Solde</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="total" value="0"/>
                                <c:forEach var="cb" items="${requestScope['listeDesComptesB']}">
                                    <tr>
                                        <td>${cb.accountNumber}</td>
                                        <td>${cb.firstName}</td>
                                        <td>${cb.lastName}</td>
                                        <td>${cb.balance}</td>
                                        <c:set var="total" value="${total+1}"/>
                                    </tr>
                                </c:forEach>
                                    <tr><td><b>TOTAL</b></td><td></td><td></td><td><b>${total}</b></td></tr>
                            </tbody>
                        </table>


                    </div>
                </div>
            </div>

        </div>



  
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
