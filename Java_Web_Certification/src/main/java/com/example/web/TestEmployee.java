package com.example.web;

import java.sql.Date;
import java.util.GregorianCalendar;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class TestEmployee {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AnnotationConfiguration config = new AnnotationConfiguration();
		config.addAnnotatedClass(Employee.class);
		config.configure("hibernate.cfg.xml");
		
		/*new SchemaExport(config).create(true, true);*/
		
		SessionFactory factory = config.buildSessionFactory();
		Session session = factory.getCurrentSession();
		
		session.beginTransaction();
		{
			Employee alex = new Employee();
			//alex.setEmpId(100);
			alex.setEmpName("Md Nazmus Salahin Rocky");
			alex.setEmpEmailAddress("alex@hibernate.com");
			alex.setEmpPassword("alexpass");
			alex.setEmpJoinDate(new GregorianCalendar(2009, 05, 26));
			alex.setEmpLoginTime(Date.valueOf("2010-06-05"));
			
			session.save(alex);
			
		}
		
		{
			Employee alex = new Employee();
			//alex.setEmpId(100);
			alex.setEmpName("Md Nazmus Salahin Rocky");
			alex.setEmpEmailAddress("alex@hibernate.com");
			alex.setEmpPassword("alexpass");
			alex.setEmpJoinDate(new GregorianCalendar(2009, 05, 26));
			alex.setEmpLoginTime(Date.valueOf("2010-06-05"));
			
			session.save(alex);
			
		}
		
		{
			Employee alex = new Employee();
			//alex.setEmpId(100);
			alex.setEmpName("Md Nazmus Salahin Rocky");
			alex.setEmpEmailAddress("alex@hibernate.com");
			alex.setEmpPassword("alexpass");
			alex.setEmpJoinDate(new GregorianCalendar(2009, 05, 26));
			alex.setEmpLoginTime(Date.valueOf("2010-06-05"));
			
			session.save(alex);
			
		}
		
		{
			Employee alex = new Employee();
			//alex.setEmpId(100);
			alex.setEmpName("Soton");
			alex.setEmpEmailAddress("alex@hibernate.com");
			alex.setEmpPassword("alexpass");
			alex.setEmpJoinDate(new GregorianCalendar(2009, 05, 26));
			alex.setEmpLoginTime(Date.valueOf("2010-06-05"));
			
			session.save(alex);
			
		}
		
		{
			Employee alex = new Employee();
			//alex.setEmpId(100);
			alex.setEmpName("Toma");
			alex.setEmpEmailAddress("alex@hibernate.com");
			alex.setEmpPassword("alexpass");
			alex.setEmpJoinDate(new GregorianCalendar(2009, 05, 26));
			alex.setEmpLoginTime(Date.valueOf("2010-06-05"));
			
			session.save(alex);
			
		}
		
		{
			Employee alex = new Employee();
			//alex.setEmpId(100);
			alex.setEmpName("Sonia");
			alex.setEmpEmailAddress("alex@hibernate.com");
			alex.setEmpPassword("alexpass");
			alex.setEmpJoinDate(new GregorianCalendar(2009, 05, 26));
			alex.setEmpLoginTime(Date.valueOf("2010-06-05"));
			
			session.save(alex);
		}
		session.getTransaction().commit();
	}

}
