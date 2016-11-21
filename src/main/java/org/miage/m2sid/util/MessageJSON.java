/**
 *
 * @author Ersagun
 */

package org.miage.m2sid.util;

public class MessageJSON {
    private String login;
    private String objet;
    private String corps;
    
    public MessageJSON(String l, String o, String c){
        this.login=l;
        this.objet=o;
        this.corps=c;
    }
    
    public String getLogin(){
        return this.login;
    }
    public String getObjet(){
        return this.objet;
    }
    public String getCorps(){
        return this.corps;
    }
    
    public void setLogin(String l){
        this.login=l;
    }
    public void setObjet(String o){
        this.objet=o;
    }
    public void setCorps(String c){
        this.corps=c;
    }
       
}
