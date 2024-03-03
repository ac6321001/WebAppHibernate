package modal;

import java.util.Date;
import java.util.List;
import java.util.Locale.Category;

public class Employee {
	int id;
	String name;
	Address address;
	
	public Employee(int id,String name,Address address) {
		this.id=id;
		this.name=name;
		this.address=address;
	}
	
	void display() {
		address.setCity("Pune");
		System.out.println(address.getCity());
	}
	
	public static void main(String[] args) {
		Address ad=new Address();
		Employee em=new Employee(101, "ABC", ad);
		em.display();
	}
	
}
