package controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;


import dao.HybernateUtil;
import modal.Student;

public class ListOfStudent {
	public static void main(String[] args) {
		Session session=HybernateUtil.getSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		
		List<Student> list=session.createQuery("from Student").list();
		
		for (Student s : list) {
			System.out.println(s.getFname()+" "+s.getLname()+" "+s.getEmail()+" "+s.getAge());
		} 

	}
}
