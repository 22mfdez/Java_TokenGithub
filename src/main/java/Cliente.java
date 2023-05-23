/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Maria
 */
public class Cliente {
    public String usuario;
    public String plan;
    public int peso;
    public String categoria;
    public int eventos;
    public int horas;

    public Cliente(String usuario, String plan, int peso, String categoria, int eventos, int horas) {
        this.usuario = usuario;
        this.plan = plan;
        this.peso = peso;
        this.categoria = categoria;
        this.eventos = eventos;
        this.horas = horas;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPlan() {
        return plan;
    }

    public void setPlan(String plan) {
        this.plan = plan;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public int getEventos() {
        return eventos;
    }

    public void setEventos(int eventos) {
        this.eventos = eventos;
    }

    public int getHoras() {
        return horas;
    }

    public void setHoras(int horas) {
        this.horas = horas;
    }
    
    
    public float totalFactura(){
        float total = 0;
         if (plan.equals("princ")){
            total = total + 25*4;
        }else if (plan.equals("inter")){
            total = total + 30*4; //4 semanas
        }else{
            total = total + 35*4; 
        }
        
        total = total + 22*eventos; //DESPUÉS EVENTOS
        
        total = total + 9.95f*horas; //DESPUÉS HORAS
        
        return total;
    }
    
    
}
