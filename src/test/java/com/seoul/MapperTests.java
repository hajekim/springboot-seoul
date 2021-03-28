package com.seoul;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.seoul.domain.JjalDTO;
import com.seoul.mapper.JjalMapper;

@SpringBootTest
class MapperTests {

	@Autowired
	private JjalMapper jjalMapper;

	@Test
	public void testOfInsert() {
		JjalDTO params = new JjalDTO();
		params.setADDR("/usr/share/jjal/01.jpg");

		int result = jjalMapper.insertJjal(params);
		System.out.println("결과는 " + result + "입니다.");
	}

}
