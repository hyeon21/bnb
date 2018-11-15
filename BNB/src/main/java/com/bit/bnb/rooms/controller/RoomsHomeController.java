package com.bit.bnb.rooms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bit.bnb.rooms.model.RoomsVO;
import com.bit.bnb.rooms.service.RoomsLIstService;
import com.bit.bnb.rooms.util.Paging;

@Controller
public class RoomsHomeController {

	@Autowired
	RoomsLIstService roomsLIstService;

	@RequestMapping(value = "/rooms", method = RequestMethod.GET)
	public ModelAndView getRoomsHome(RoomsVO rv,
			@RequestParam(value = "page", required = false, defaultValue = "1") int currentPageNo) {

		ModelAndView modelAndView = new ModelAndView();

//		Paging paging = roomsLIstService.getPaging("rooms", currentPageNo, 20);
//		modelAndView.addObject("paging", paging);
//		modelAndView.addObject("rooms", roomsLIstService.getRoomsList(rv, paging));
//		modelAndView.addObject("reviewSummary", roomsLIstService.getReviewSummary());
		modelAndView.setViewName("rooms/home");
		return modelAndView;
	}

	@RequestMapping(value = "/rooms", method = RequestMethod.POST)
	public ModelAndView getSearchRoomsHome(RoomsVO rv,
			@RequestParam(value = "page", required = false, defaultValue = "1") int currentPageNo) {
		ModelAndView modelAndView = new ModelAndView();

//		Paging paging = roomsLIstService.getPaging("rooms", currentPageNo, 15);
//		modelAndView.addObject("paging", paging);
//		modelAndView.addObject("rooms", roomsLIstService.getRoomsList(rv, paging));
		modelAndView.setViewName("rooms/home");
		return modelAndView;
	}
}
