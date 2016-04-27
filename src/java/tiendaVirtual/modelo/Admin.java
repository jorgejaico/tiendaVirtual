/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tiendavirtual.modelo;

/**
 *
 * @author Jorge
 */
public class Admin {
    private Integer adm_id;
    private String adm_nombre;
    private String adm_apellidos;
    private String adm_pass;
    private String adm_mail;

    public Admin() {
    }

    public Integer getAdm_id() {
        return adm_id;
    }

    public void setAdm_id(Integer adm_id) {
        this.adm_id = adm_id;
    }

    public String getAdm_nombre() {
        return adm_nombre;
    }

    public void setAdm_nombre(String adm_nombre) {
        this.adm_nombre = adm_nombre;
    }

    public String getAdm_apellidos() {
        return adm_apellidos;
    }

    public void setAdm_apellidos(String adm_apellidos) {
        this.adm_apellidos = adm_apellidos;
    }

    public String getAdm_pass() {
        return adm_pass;
    }

    public void setAdm_pass(String adm_pass) {
        this.adm_pass = adm_pass;
    }

    public String getAdm_mail() {
        return adm_mail;
    }

    public void setAdm_mail(String adm_mail) {
        this.adm_mail = adm_mail;
    }

    
}
