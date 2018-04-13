package edu.dmacc.spring.conferenceregistration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AttendeeController {
		@Autowired AttendeeDao dao;
		private static final String[] companyNames= {"Principal", "Wells Fargo", "Nationwide", "Wellmark",};
		
		
		@RequestMapping(value="/viewAll")
		public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Attendee> allAttendees = dao.getAllAttendees();
		modelAndView.setViewName("viewAllAttendees");
		modelAndView.addObject("all", allAttendees);
		return modelAndView;
		}
		
		@RequestMapping(value="/form")
			public ModelAndView attendee() {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.setViewName("attendeeForm");
			modelAndView.addObject("attendee", new Attendee());
			modelAndView.addObject("comanyNames", companyNames);
			
			return modelAndView;
		}
		
		@RequestMapping(value="/result")
			public ModelAndView processAttendee(Attendee attendee) {
				System.out.println("In processAttendee");
				ModelAndView modelAndView = new ModelAndView();
				dao.insertAttendee(attendee);
				System.out.println("Value in getName" + attendee.getName());
				modelAndView.setViewName("attendeeResult");
				modelAndView.addObject("a", attendee);
				return modelAndView;
		}
		

		
	@Bean
	public AttendeeDao dao() {
		AttendeeDao bean = new AttendeeDao();
		return bean;
	}
	
}
