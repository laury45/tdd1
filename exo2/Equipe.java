public class Equipe{
	private int id_equipe;
	private int pts;
	private int g;
	private int n;
	private int p;
	private int nbp;
	private int nbc;
	private int diff;
	private int clas;

	public Equipe(int i){
		id_equipe = i;
		pts = 0; g = 0; n = 0; p = 0;
		nbp = 0; nbc = 0; diff = 0; clas = 0;
	}
	public void set_id_equipe(int i){id_equipe = i;}
	public void set_pts(int i){pts = i;}
	public void set_g(int i){g = i;}
	public void set_n(int i){n = i;}
	public void set_p(int i){p = i;}
	public void set_nbp(int i){nbp = i;}
	public void set_nbc(int i){nbc = i;}
	public void set_diff(int i){diff = i;}
	public void set_clas(int i){clas = i;}
	public int get_id_equipe(){return id_equipe;}
	public int get_pts(){return pts;}
	public int get_g(){return g;}
	public int get_n(){return n;}
	public int get_p(){return p;}
	public int get_nbc(){return nbc;}
	public int get_nbp(){return nbp;}
	public int get_diff(){return diff;}
	public int get_clas(){return clas;}

	public String toString(){
		String rep = "";
		rep += "    "+pts +"    "+ g +"    "+ n +"    "+ p +"    "+ nbp +"    "+ nbc +"   "+ diff; 
		return rep;
	}
}