/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.miage.m2sid.chat;

import java.util.ArrayList;
import java.util.Set;

/**
 *
 * @author Ersagun
 */
public class Annuaire {
    
    private Long id;
    private String nom;
    private Set<Abonne> lesAbonnes;
    
    public Annuaire(String n, Set<Abonne> la){
        this.nom=n;
        this.lesAbonnes=la;
    }
    public Annuaire(){
        
    }
    
    public String getNom(){
        return this.nom;
    }
    
    public Set<Abonne> getLesAbonnes(){
        return this.lesAbonnes;
    }
    
    public void setNom(String n){
        this.nom=n;
    }
    
    public void setLesAbonnes(Set<Abonne> la){
        this.lesAbonnes=la;
    }

     public Long getId() {
        return this.id;
    }

    public void setId(Long idd) {
        this.id = idd;
    }
    
}
