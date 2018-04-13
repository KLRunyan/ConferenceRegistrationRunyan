package edu.dmacc.spring.conferenceregistration;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class AttendeeDao {

	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("ConferenceRegistration");
	
	public void insertAttendee(Attendee attendeeToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(attendeeToAdd);
		em.getTransaction().commit();
		em.close();
		//emfactory.close();
	}

	public List<Attendee> getAllAttendees() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select a from Attendee a";
		TypedQuery<Attendee> typedQuery = em.createQuery(q, Attendee.class);
		List<Attendee> all = typedQuery.getResultList();
		return all;
	}
}
