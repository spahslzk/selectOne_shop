package com.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gds.dto.GdsDetailDTO;
import com.spring.gds.dto.GdsInfoDTO;
import com.spring.mapper.GdsMapper;

@Repository
public class GdsManageRepository {
	
	@Autowired
	 private GdsMapper gdsMapper;
	
	public List<GdsInfoDTO> getAllGdsList() {
		return gdsMapper.getAllGdsList();
	}
	public List<GdsInfoDTO> getNewItems() {
		return gdsMapper.getNewItems();
	}
	public List<GdsInfoDTO> gdsBestItems() {
		return gdsMapper.gdsBestItems();
	}
	public List<GdsInfoDTO> searchResult(String keyword) {
		return gdsMapper.searchResult(keyword);
	}
	
	public GdsDetailDTO getGdsDetail(String gdsNum) {
		return gdsMapper.getGdsDetail(gdsNum);
	}
	
	public int getGdsStock(String gdsNum) {
		return gdsMapper.getGdsStock(gdsNum);
	}
	public void updateStock(String gdsNum, int count) {
		gdsMapper.updateStock(gdsNum, count);
	}
	public List<GdsInfoDTO> gdsBrandCodeList(int brandCode) {
		return gdsMapper.gdsBrandCodeList(brandCode);
	}
	public List<GdsInfoDTO> gdsKBCodeList(int brandCode,int kindsCode) {
		return gdsMapper.gdsKBCodeList(brandCode,kindsCode);
	}
	public List<GdsInfoDTO> gdsKindsCodeList(int kindsCode) {
		return gdsMapper.gdsKindsCodeList(kindsCode);
	}
}
