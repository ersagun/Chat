/**
 * @author Ersagun Yalcintepe
 *
 */

package org.miage.m2sid.chat;

public class Message {

    private Long id;
    private Abonne expediteur;
    private String objet;
    private String corps;

    public Message(String o, String c) {
        this.objet = o;
        this.corps = c;
    }

    public Message() {

    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long idd) {
        this.id = idd;
    }

    public String getObjet() {
        return this.objet;
    }

    public Abonne getExpediteur() {
        return this.expediteur;
    }

    public String getCorps() {
        return this.corps;
    }

    public void setCorps(String c) {
        this.corps = c;
    }

    public void setExpediteur(Abonne e) {
        this.expediteur = e;
    }

    public void setObjet(String o) {
        this.objet = o;
    }
}
