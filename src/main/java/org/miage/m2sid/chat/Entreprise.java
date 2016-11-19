/**
 * @author Ersagun Yalcintepe
 *
 */

package org.miage.m2sid.chat;

public class Entreprise extends Abonne {

    private String raisonSociale;

    public Entreprise(String rs, String mdp, String login) {
        super(login, mdp);
        this.raisonSociale = rs;
    }

    public Entreprise() {

    }

    public String getRaisonSociale() {
        return this.raisonSociale;
    }

    public void setRaisonSociale(String rs) {
        this.raisonSociale = rs;
    }

}
