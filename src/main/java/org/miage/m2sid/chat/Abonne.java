/**
 * @author Ersagun Yalcintepe
 *
 */

package org.miage.m2sid.chat;

import java.util.Set;

public abstract class Abonne {

    private String mdp;
    private String login;
    private Set<Message> messagesEnvoyes;

    public Abonne(String mdp, String login) {
        this.mdp = mdp;
        this.login = login;
    }

    public Abonne() {

    }

    public String getMdp() {
        return this.mdp;
    }

    public Set<Message> getMessagesEnvoyes() {
        return this.messagesEnvoyes;
    }

    public void setMessagesEnvoyes(Set<Message> lm) {
        this.messagesEnvoyes = lm;
    }

    public String getLogin() {
        return this.login;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public void setLogin(String login) {
        this.login = login;
    }
}
