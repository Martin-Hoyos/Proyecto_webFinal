package solicitud;

public class Solicitud {
    private int id;
    private String nombre;
    private String telefono;
    private String email;
    private String direccion;
    private String reside;
    private String descripcion;
    private String ayudaEspecifica;

    
    public Solicitud(int id, String nombre, String telefono, String email, String direccion, String reside, String descripcion, String ayudaEspecifica) {
        this.id = id;
        this.nombre = nombre;
        this.telefono = telefono;
        this.email = email;
        this.direccion = direccion;
        this.reside = reside;
        this.descripcion = descripcion;
        this.ayudaEspecifica = ayudaEspecifica;
    }

    public int getId() { 
    	return id;
    }
    public String getNombre() {
    	return nombre;
    }
    
    public String getTelefono() { 
    	return telefono; 
    } 
    
    public String getEmail() {
    	return email; 
    }
    
    public String getDireccion() {
    	return direccion;
    }
    
    public String getReside() { 
    	return reside; 
    }
    
    public String getDescripcion() { 
    	return descripcion; 
    }
    
    public String getAyudaEspecifica() { 
    	return ayudaEspecifica; 
    }
}