<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les objets</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les objets</h1>
    <form action="#" method="post">
        <p>Saisir un nom : <input type="text" name="nom"></p>
        <p>Saisir un âge : <input type="text" name="age"></p>
        <p><input type="submit" value="Créer la personne"></p>
    </form>

<%-- Déclaration des classes --%>
<%!
    class Personne {
        String nom;
        int age;
        
        // Méthode pour l'Exercice 2
        String seDecrire() {
            return "Je m'appelle " + nom + " et j'ai " + age + " ans.";
        }
    }

    class Voiture {
        String marque;
        String modele;
        int annee;
    }

    // Classe pour l'Exercice 3
    class Rectangle {
        int longueur;
        int largeur;
        
        int calculerSurface() {
            return longueur * largeur;
        }
    }
%>

<%-- Récupération des valeurs du formulaire --%>
<% 
String nom = request.getParameter("nom"); 
String age = request.getParameter("age"); 
Personne p = null; // Déclaration globale de l'objet pour qu'il soit accessible plus bas

if (nom != null && age != null && !nom.isEmpty() && !age.isEmpty()) { 
    // Instanciation d'un objet Personne et affectation des attributs
    p = new Personne();
    p.nom = nom;
    p.age = Integer.parseInt(age);
    
    out.println("<h3>Objet Personne créé !</h3>");
    out.println("<p>Nom : " + p.nom + "</p>");
    out.println("<p>Age : " + p.age + " ans</p>");
}
%>

    <hr>

    <h2>Exercice 1 : La classe Voiture</h2>
    <p>Créer une classe <code>Voiture</code> avec les attributs <code>marque</code>, <code>modele</code> et <code>annee</code>. Instancier une voiture, lui affecter des valeurs et afficher ses caractéristiques.</p>
<%
    // 1. Création de l'objet voiture
    Voiture maVoiture = new Voiture();

    // 2. Attribution des valeurs
    maVoiture.marque = "Peugeot";
    maVoiture.modele = "208";
    maVoiture.annee = 2022;

    // 3. Affichage sur la page web
    out.println("<p><b>Marque :</b> " + maVoiture.marque + "</p>");
    out.println("<p><b>Modèle :</b> " + maVoiture.modele + "</p>");
    out.println("<p><b>Année :</b> " + maVoiture.annee + "</p>");
%>

    <h2>Exercice 2 : Ajouter une méthode à la classe Personne</h2>
    <p>Ajouter à la classe <code>Personne</code> une méthode <code>seDecrire()</code> qui retourne une chaîne du type : "Je m'appelle Marie et j'ai 25 ans". Appeler cette méthode sur l'objet p et afficher le résultat.</p>
<%
if (p != null) {
    out.println("<p><b>Résultat de seDecrire() :</b> " + p.seDecrire() + "</p>");
} else {
    out.println("<p><i>(Utilise le formulaire tout en haut pour tester cet exercice !)</i></p>");
}
%>

    <h2>Exercice 3 : La classe Rectangle</h2>
    <p>Créer une classe <code>Rectangle</code> avec les attributs <code>longueur</code> et <code>largeur</code>.<br>
    Ajouter une méthode <code>calculerSurface()</code> qui retourne la surface du rectangle.<br>
    Instancier un rectangle, lui affecter des valeurs, et afficher sa surface.</p>
<%
    // 1. Instanciation du rectangle
    Rectangle monRectangle = new Rectangle();

    // 2. Affectation des valeurs
    monRectangle.longueur = 10;
    monRectangle.largeur = 5;

    // 3. Calcul et affichage de la surface
    int surface = monRectangle.calculerSurface();
    out.println("<p><b>Longueur :</b> " + monRectangle.longueur + " cm</p>");
    out.println("<p><b>Largeur :</b> " + monRectangle.largeur + " cm</p>");
    out.println("<p><b>Surface calculée :</b> " + surface + " cm²</p>");
%>

    <br><br>
    <a href="index.html">Retour au sommaire</a>
</body>
</html>
