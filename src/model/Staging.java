package model;


public class Staging {
	//`Ngay`, `Tinh`, `DB`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`
	
	private String date;
	private String tinh;
	private int DB;
	private int g1;
	private int g2;
	private int g3;
	private int g4;
	private int g5;
	private int g6;
	private int g7;
	private int g8;
	
	public Staging(String date, String tinh, int dB, int g1, int g2, int g3, int g4, int g5, int g6, int g7, int g8) {
		super();
		this.date = date;
		this.tinh = tinh;
		DB = dB;
		this.g1 = g1;
		this.g2 = g2;
		this.g3 = g3;
		this.g4 = g4;
		this.g5 = g5;
		this.g6 = g6;
		this.g7 = g7;
		this.g8 = g8;
	}
	public Staging() {
		super();
		
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTinh() {
		return tinh;
	}
	public void setTinh(String tinh) {
		this.tinh = tinh;
	}
	public int getDB() {
		return DB;
	}
	public void setDB(int dB) {
		DB = dB;
	}
	public int getG1() {
		return g1;
	}
	public void setG1(int g1) {
		this.g1 = g1;
	}
	public int getG2() {
		return g2;
	}
	public void setG2(int g2) {
		this.g2 = g2;
	}
	public int getG3() {
		return g3;
	}
	public void setG3(int g3) {
		this.g3 = g3;
	}
	public int getG4() {
		return g4;
	}
	public void setG4(int g4) {
		this.g4 = g4;
	}
	public int getG5() {
		return g5;
	}
	public void setG5(int g5) {
		this.g5 = g5;
	}
	public int getG6() {
		return g6;
	}
	public void setG6(int g6) {
		this.g6 = g6;
	}
	public int getG7() {
		return g7;
	}
	public void setG7(int g7) {
		this.g7 = g7;
	}
	public int getG8() {
		return g8;
	}
	public void setG8(int g8) {
		this.g8 = g8;
	}
	
	

	
}
