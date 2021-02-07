<%-- 
    Document   : newAccount
    Created on : 5 févr. 2021, 19:22:46
    Author     : kykwy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionnaire d'utilisateurs</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row justify-content-md-center" style="margin-top: 50px">
                <a href="ServletCompteBancaire?action=ListerCompte" class="badge" style="font-size: 15px"><div class="alert alert-primary" style="width: 30rem;" >
                        Afficher la liste de tous les comptes bancaires
                    </div></a>

            </div>
            <div class="row justify-content-md-center" style="margin-top: 20px">

                <div class="card" style="width: 30rem;">
                    <div class="card-header" style="background-color: #2E7BBD; color:white">
                        Création d'un compte banquaire
                    </div>
                    <div class="card-body">
                        <form action="ServletCompteBancaire" method="post">
                            <div class="form-group">
                                <label for="nom">Nom</label>
                                <input type="text" class="form-control" id="nom"   name="nom">

                            </div>
                            <div class="form-group">
                                <label for="prenom">Prenom</label>
                                <input type="text" class="form-control" id="prenom"   name="prenom">

                            </div>
                            <div class="form-group">
                                <label for="numCompte">Numero de compte</label>
                                <input type="text" class="form-control" id="numCompte"   name="numCompte">

                            </div>
                            <div class="form-group">
                                <label for="balance">Solde</label>
                                <input type="text" class="form-control" id="balance"   name="balance">

                            </div>
                            <input type="hidden" name="action" value="creerNouveauCompte"/>
                            <div class="text-center"><button type="submit" class="btn btn-success">Enregistrer</button></div>

                        </form>



                    </div>
                </div>
            </div>
        </div>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>





    </body>
</html>