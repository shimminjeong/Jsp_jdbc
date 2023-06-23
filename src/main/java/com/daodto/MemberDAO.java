package com.daodto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@192.168.119.119:1521/dink11.dbsvr";
	private String uid = "scott";
	private String upw = "tiger";

	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String query;

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<MemberDTO> memberSelect() {
		ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			query = "select * from member";
			rs = stmt.executeQuery(query);

//			db에 있는거 불러와서 dtos arraylist에 넣기
			while (rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String phone1 = rs.getString("phone1");
				String phone2 = rs.getString("phone2");
				String phone3 = rs.getString("phone3");
				String gender = rs.getString("gender");

				MemberDTO dto = new MemberDTO(id, pw, name, phone1, phone2, phone3, gender);
				dtos.add(dto);
			}
		} catch (Exception e) {

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return dtos;
	}

	public MemberDTO memberId(String id) {

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		MemberDTO dto = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			query = "select * from member where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String phone1 = rs.getString("phone1");
				String phone2 = rs.getString("phone2");
				String phone3 = rs.getString("phone3");
				String gender = rs.getString("gender");

				dto = new MemberDTO(id, pw, name, phone1, phone2, phone3, gender);

			}

		} catch (Exception e) {

		} finally {
			try {

				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		return dto;

		/*
		 * ArrayList<MemberDTO> dtos = this.memberSelect(); for (MemberDTO dto : dtos) {
		 * if (dto.getId().equals(id)) { return dto; } }
		 */

	}

	public void memberUpdate(MemberDTO dto) {

		String id = dto.getId();
		String pw = dto.getPw();
		String name = dto.getName();
		String phone1 = dto.getPhone1();
		String phone2 = dto.getPhone2();
		String phone3 = dto.getPhone3();
		String gender = dto.getGender();

		query = "UPDATE MEMBER SET PW=?,NAME=?,PHONE1=?,PHONE2=?,PHONE3=?,GENDER=? WHERE ID=?";

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, pw);
			pstmt.setString(2, name);
			pstmt.setString(3, phone1);
			pstmt.setString(4, phone2);
			pstmt.setString(5, phone3);
			pstmt.setString(6, gender);
			pstmt.setString(7, id);

			int iResult = pstmt.executeUpdate();

			if (iResult >= 1) {
				System.out.println("update success");
			} else {
				System.out.println("update fail");
			}

		} catch (Exception e) {

		} finally {
			try {

				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	}

}
