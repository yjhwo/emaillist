package com.estsoft.emaillist.dao.test;

import java.util.List;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.emaillist.dao.EmailListDAO;
import com.estsoft.emaillist.vo.EmailListVO;

public class EmailListDaoTest {

	public static void main(String[] args) {
		getInsertTest();
		getListTest();
	}

	public static void getInsertTest() {

		EmailListDAO dao = new EmailListDAO(new MySQLWebDBConnection());
		EmailListVO vo = new EmailListVO(null, "둘", "리", "dooly@gmail.com");
		dao.insert(vo);
	}
	
	public static void getListTest() {
		// 다른게 필요할 경우엔 다른 DBConnection을 구현하고 호출하는 곳에서만 바꿔 껴주면된다.↓
		EmailListDAO dao = new EmailListDAO(new MySQLWebDBConnection());
		List<EmailListVO> list = dao.getList();
		
		for (EmailListVO vo : list) {
			System.out.println(vo);
		}
	}
}
