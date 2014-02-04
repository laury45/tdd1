import java.sql.SQLException; 

public class Principale2{
    public static void main(String[] args) throws SQLException,Exception{
	Classement cl=new Classement("oracle","oracle","valin","Camilled"); 
	cl.leclassement(); 
	cl.affiche(); 
    }
}
