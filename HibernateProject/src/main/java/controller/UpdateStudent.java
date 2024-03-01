package controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.HybernateUtil;
import modal.Student;

public class UpdateStudent {
	public static void main(String[] args) {
		Session session=HybernateUtil.getSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		
		Student st=session.get(Student.class,2);
		st.setFname("sham");
		st.setLname("Jadhav");
		st.setEmail("abc@gmail.com");
		st.setAge(20);
		session.update(st);
		
		
		
		//session.get(Student.class,session).setFname("Sham");
		//session.update(Student.class);
		//session.saveOrUpdate(ob);
		transaction.commit();
		
		List<Student> list=session.createQuery("from Student").list();
		
		for (Student s : list) {
			System.out.println(s.getFname()+" "+s.getLname()+" "+s.getEmail()+" "+s.getAge());
		} 
	}

}
