package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dto.AnimalDto;
import Util.dbUtil;

public class AnimalDao {
	private static final String TBL_NAME = "animal";
	private static final String IMAGE = "image";
	private static final String KIND = "kind";
	private static final String BIRTHDAY = "birthday";
	private static final String SEX = "sex";
	private static final String CONTACT = "contact";
	private static final String ANIMAL_CHAR = "animal_chara";
	private static final String USER_AREA = "user_area";

	/** DBコネクション */
	public Connection con;
	/** DBステートメント */
	PreparedStatement stmt;
	/** 検索結果 */
	ResultSet rs;

	/**
	 * インスタンス生成時DBコネクション
	 *
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public AnimalDao(Connection con) {
		this.con = con;
	}

	//新規
	public List<AnimalDto> selectResult(String kind, String sex, String user_area) throws SQLException, ClassNotFoundException, NumberFormatException {
		List<AnimalDto> rtnList = new ArrayList<>();
		StringBuilder sql = new StringBuilder();
		sql.append(" SELECT ");
		sql.append("    " + "*");
		sql.append(" FROM ");
		sql.append("    " + TBL_NAME);
		sql.append(" WHERE ");
		sql.append("    " + KIND + " = " + "?");
		sql.append(" AND ");
		sql.append("    " + SEX + " = " + "?");
		sql.append(" AND ");
		sql.append("    " + USER_AREA + " = " + "?");
		try {
			this.stmt = con.prepareStatement(sql.toString());
			stmt.setString(1, kind);
			stmt.setString(2, sex);
			stmt.setString(3, user_area);
			rs = stmt.executeQuery();
			while (rs.next()) {
				rtnList.add(rowMapping(rs));
			}
		} finally {
			dbUtil.closeStatement(this.stmt);
		}
		return rtnList;
	}

	public void animalInsert(String kind, String birthday, String sex, String contact, String animalChara, String userArea, String image)
			throws NumberFormatException, SQLException, ClassNotFoundException {
		StringBuilder sql = new StringBuilder();
		sql.append(" INSERT " + " INTO ");
		sql.append("    " + TBL_NAME);
		sql.append(" VALUES ");
		sql.append(" ( ");
		sql.append("    " + " ? ");
		sql.append("   ," + " ? ");
		sql.append("   ," + " ? ");
		sql.append("   ," + " ? ");
		sql.append("   ," + " ? ");
		sql.append("   ," + " ? ");
		sql.append("   ," + " ? ");
		sql.append(" ) ");
		try {
			this.stmt = con.prepareStatement(sql.toString());
			stmt.setString(1, image);
			stmt.setString(2, kind);
			stmt.setString(3, birthday);
			stmt.setString(4, sex);
			stmt.setString(5, contact);
			stmt.setString(6, animalChara);
			stmt.setString(7, userArea);
			stmt.executeUpdate();
		} finally {
			dbUtil.closeStatement(this.stmt);
		}
	}

	protected AnimalDto rowMapping(ResultSet rs) throws SQLException {
		AnimalDto animaluserdto = new AnimalDto();
		animaluserdto.setImage(rs.getString(IMAGE));
		animaluserdto.setKind(rs.getString(KIND));
		animaluserdto.setBirthday(rs.getString(BIRTHDAY));
		animaluserdto.setSex(rs.getString(SEX));
		animaluserdto.setContact(rs.getString(CONTACT));
		animaluserdto.setUserArea(rs.getString(USER_AREA));
		animaluserdto.setAnimalChar(rs.getString(ANIMAL_CHAR));
		return animaluserdto;
	}
}