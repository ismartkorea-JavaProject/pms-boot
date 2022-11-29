package net.hibzinet.pms.service;

import java.util.List;

import net.hibzinet.pms.vo.PmsVO;

public interface PmsService {
	
	public List<PmsVO> selectListPms(PmsVO pmsVO) throws Exception;
	
	public PmsVO selectPms(PmsVO pmsVO) throws Exception;
	
	public void savePms(PmsVO pmsVO) throws Exception;
	
	public void updatePms(PmsVO pmsVO) throws Exception;
	
	public void deletePms(PmsVO pmsVO) throws Exception;

}
