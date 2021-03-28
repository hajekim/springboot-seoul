package com.seoul.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.seoul.domain.JjalDTO;

@Mapper
public interface JjalMapper {

	public int insertJjal(JjalDTO params);

	public JjalDTO selectJjalDetail(Long idx);

	public int updateJjal(JjalDTO params);

	public int deleteJjal(Long idx);

	public List<JjalDTO> selectJjalList();

	public int selectJjalTotalCount();

}
