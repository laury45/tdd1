import java.sql.SQLException;

public class Principale{
	public static void main(String[] args)throws SQLException, Exception{
		Classement a = new Classement("oracle", "oracle", "malfilatre", "malfilatre");
		a.calcul_classement(); 
		a.make_classement();
		a.affiche_classement();
	}
}