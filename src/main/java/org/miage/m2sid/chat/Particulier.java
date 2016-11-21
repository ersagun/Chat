/**
 * @author Ersagun Yalcintepe
 *
 */

package org.miage.m2sid.chat;

public class Particulier extends Abonne {

    private String nom;
    private String prenom;

    public Particulier(String unNom, String unPrenom, String mdp, String login) {
        super(mdp, login);
        this.nom = unNom;
        this.prenom = unPrenom;
    }

    public Particulier() {

    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
}
