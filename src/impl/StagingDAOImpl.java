package impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.StagingDAO;
import model.Staging;
import project.ConnectionProvider;

public class StagingDAOImpl implements StagingDAO{

	@Override
	public List<Staging> getList() {
		List<Staging> result = new ArrayList<Staging>();
		
	    String sql = "select t.* from datawarehouse.staging t";
		try {
			ResultSet rs = ConnectionProvider.executeSQL(sql);
			while(rs.next()) {
				Staging model =  new Staging();
				model.setDate(rs.getString("Ngay"));
				model.setTinh(rs.getString("Tinh"));
				model.setDB(rs.getInt("DB"));
				model.setG1(rs.getInt("1"));
				model.setG2(rs.getInt("2"));
				model.setG3(rs.getInt("3"));
				model.setG4(rs.getInt("4"));
				model.setG5(rs.getInt("5"));
				model.setG6(rs.getInt("6"));
				model.setG7(rs.getInt("7"));
				model.setG8(rs.getInt("8"));
				result.add(model);
			}
			
			return result;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return result;
		
	}
}
