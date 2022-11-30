package project;

import java.util.HashMap;
import java.util.Map;

import dao.LanguageDAO;

public class LanguageImpDao implements LanguageDAO{

	@Override
	public Map<String, String> englishLanguage() {
		Map<String,String> map = new HashMap<>();
		map.put("Header.Home", "Home");
		map.put("Header.About", "About");
		map.put("Header.slogan1", "Making billions is not difficult, five o'clock is there");
		map.put("Header.slogan2", "Unexpectedly rich is thanks to lottery tickets");
		map.put("Header.slogan3", "I picked up my son 17 this afternoon, I went to the party");
		map.put("Header.slogan4", "In the past, I lived in a tree house\r\n" + 
				"\r\n" + 
				"Now I win the lottery, I build a house");
		map.put("Header.slogan5", "Don't call me poor when the lottery ticket I hold in my hand is worth 2 billion");
		map.put("Header.slogan6", "And if you don't win, buy another one tomorrow");
		map.put("Header.result", "LOTTERY RESULT");
		map.put("Header.date", "Date");
		map.put("Header.province", "Province");
		map.put("Header.special", "Special Prize");
		map.put("Header.prize1", "Prize 1");
		map.put("Header.prize2", "Prize 2");
		map.put("Header.prize3", "Prize 3");
		map.put("Header.prize4", "Prize 4");
		map.put("Header.prize5", "Prize 5");
		map.put("Header.prize6", "Prize 6");
		map.put("Header.prize7", "Prize 7");
		map.put("Header.prize8", "Prize 8");
		map.put("Header.selectProvince", "--Select Province--");
		map.put("Header.search", "Search");
		return map;
	}

	@Override
	public Map<String, String> vietNameseLanguage() {
		Map<String,String> map = new HashMap<>();
		map.put("Header.Home", "Trang chủ");
		map.put("Header.About", "Thông tin");
		map.put("Header.slogan1", "Kiếm tiền tỷ không khó, năm giờ chiều là có");
		map.put("Header.slogan2", "Giàu sang bất ngờ là nhờ vé số");
		map.put("Header.slogan3", "Anh bốc con 17 chiều nay mình đi quẩy");
		map.put("Header.slogan4", "Xưa kia ta ở nhà cây\r\n" + 
				"\r\n" + 
				"Bây giờ trúng số ta xây nhà lầu");
		map.put("Header.slogan5", "Đừng bảo tui nghèo khi tờ vé số tui cầm trên tay trị giá 1 tờ là 2 tỷ");
		map.put("Header.slogan6", "Còn nếu không trúng thì ngày mai mua tờ khác");
		map.put("Header.result", "KẾT QUẢ XỔ SỐ");
		map.put("Header.date", "Ngày");
		map.put("Header.province", "Tỉnh");
		map.put("Header.special", "Giải đặc biệt");
		map.put("Header.prize1", "Giải 1");
		map.put("Header.prize2", "Giải 2");
		map.put("Header.prize3", "Giải 3");
		map.put("Header.prize4", "Giải 4");
		map.put("Header.prize5", "Giải 5");
		map.put("Header.prize6", "Giải 6");
		map.put("Header.prize7", "Giải 7");
		map.put("Header.prize8", "Giải 8");
		map.put("Header.selectProvince", "--Chọn Tỉnh--");
		map.put("Header.search", "Tìm kiếm");
		return map;
	}

}
