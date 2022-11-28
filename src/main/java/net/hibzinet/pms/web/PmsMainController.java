package net.hibzinet.pms.web;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import net.hibzinet.pms.service.PmsService;
import net.hibzinet.pms.vo.PmsVO;

@Controller
@RequestMapping("/pms")
public class PmsMainController {

	
    @Resource(name = "PmsService")
    private PmsService pmsService;
    
    
    @RequestMapping("/selectListPms.do")
    public String selectListPms(@ModelAttribute("searchVO") PmsVO pmsVO, ModelMap model) throws Exception {

    	ArrayList<PmsVO> resultList = (ArrayList<PmsVO>) pmsService.selectListPms(pmsVO);	
    	
    	model.addAttribute("resultList", resultList);

    	return "pms/pmsList";    	
    	
    }
    
    @RequestMapping("/selectOnePms.do")
    public String selectOnePms(@ModelAttribute("searchVO") PmsVO pmsVO, ModelMap model) throws Exception {

    	PmsVO result = pmsService.selectPms(pmsVO);	
    	
    	model.addAttribute("result", result);

    	return "pms/pmsDetail";    	
    	
    }
    
    @RequestMapping("/savePms.do")
    public String savePms(@ModelAttribute("searchVO") PmsVO pmsVO, ModelMap model) throws Exception {

    	pmsService.savePms(pmsVO);
    	
    	model.addAttribute("result", "OK");

    	return "pms/pmsSave";    	
    	
    }     
    
    @RequestMapping("/updatePms.do")
    public String updatePms(@ModelAttribute("searchVO") PmsVO pmsVO, ModelMap model) throws Exception {

    	pmsService.updatePms(pmsVO);	
    	
    	model.addAttribute("result", "OK");

    	return "pms/pmsUpdate";    	
    	
    }
    
    @RequestMapping("/deletePms.do")
    public String deletePms(@ModelAttribute("searchVO") PmsVO pmsVO, ModelMap model) throws Exception {

    	pmsService.deletePms(pmsVO);	
    	
    	model.addAttribute("result", "OK");

    	return "pms/pmsDelete"; 	
    	
    }    
    
}
