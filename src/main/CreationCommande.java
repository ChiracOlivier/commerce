package com.sdzee.tp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import com.sdzee.tp.beans.Client;
import com.sdzee.tp.beans.Commande;

public class CreationCommande extends HttpServlet {

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /*
         * Récupération des données saisies, envoyées en tant que paramètres de
         * la requête GET générée à la validation du formulaire
         */
        String nom = request.getParameter( "nomClient" );
        String prenom = request.getParameter( "prenomClient" );
        String adresse = request.getParameter( "adresseClient" );
        String telephone = request.getParameter( "telephoneClient" );
        String email = request.getParameter( "emailClient" );

        /* Récupération de la date courante */
        DateTime dt = new DateTime();
        /* Conversion de la date en String selon le format défini */
        DateTimeFormatter formatter = DateTimeFormat.forPattern( "dd/MM/yyyy HH:mm:ss" );
        String date = dt.toString( formatter );
        double montant;
        try {
            /* Récupération du montant */
            montant = Double.parseDouble( request.getParameter( "montantCommande" ) );
        } catch ( NumberFormatException e ) {
            /* Initialisation à -1 si le montant n'est pas un nombre correct */
            montant = -1;
        }
        String modePaiement = request.getParameter( "modePaiementCommande" );
        String statutPaiement = request.getParameter( "statutPaiementCommande" );
        String modeLivraison = request.getParameter( "modeLivraisonCommande" );
        String statutLivraison = request.getParameter( "statutLivraisonCommande" );

        String message;
        /*
         * Initialisation du message à afficher : si un des champs obligatoires
         * du formulaire n'est pas renseigné, alors on affiche un message
         * d'erreur, sinon on affiche un message de succès
         */
        if ( nom.trim().isEmpty() || adresse.trim().isEmpty() || telephone.trim().isEmpty() || montant == -1
                || modePaiement.isEmpty() || modeLivraison.isEmpty() ) {
            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"creerCommande.jsp\">Cliquez ici</a> pour accéder au formulaire de création d'une commande.";
        } else {
            message = "Commande créée avec succès !";
        }
        /*
         * Création des beans Client et Commande et initialisation avec les
         * données récupérées
         */
        Client client = new Client();
        client.setNom( nom );
        client.setPrenom( prenom );
        client.setAdresse( adresse );
        client.setTelephone( telephone );
        client.setEmail( email );

        Commande commande = new Commande();
        commande.setClient( client );
        commande.setDate( date );
        commande.setMontant( montant );
        commande.setModePaiement( modePaiement );
        commande.setStatutPaiement( statutPaiement );
        commande.setModeLivraison( modeLivraison );
        commande.setStatutLivraison( statutLivraison );

        /* Ajout du bean et du message à l'objet requête */
        request.setAttribute( "commande", commande );
        request.setAttribute( "message", message );

        /* Transmission à la page JSP en charge de l'affichage des données */
        this.getServletContext().getRequestDispatcher( "/afficherCommande.jsp" ).forward( request, response );
    }
}