package net.hibzinet.pms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.stereotype.Service;

import net.hibzinet.pms.service.PmsService;
import net.hibzinet.pms.vo.PmsVO;

@Service("PmsService")
public class PmsServiceImpl extends EgovAbstractServiceImpl implements PmsService {

	@Resource(name = "PmsDAO")
	private PmsDAO pmsDAO;
	
	public List<PmsVO> selectListPms(PmsVO pmsVO) throws Exception {

		List<PmsVO> result = pmsDAO.selectListPms(pmsVO);
		
		return result;
	}
	
	public PmsVO selectPms(PmsVO pmsVO) throws Exception {

		return pmsDAO.selectOnePms(pmsVO);
	}	
	
	public void savePms(PmsVO pmsVO) throws Exception {
		pmsDAO.savePms(pmsVO);
	}
	
	public void updatePms(PmsVO pmsVO) throws Exception {
		pmsDAO.updatePms(pmsVO);
	}
	
	public void deletePms(PmsVO pmsVO) throws Exception {
		pmsDAO.updatePms(pmsVO);
	}
}