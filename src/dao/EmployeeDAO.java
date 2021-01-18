package dao;

import java.util.List;

import bean.Employee;

public interface EmployeeDAO {
	List<Employee> get();
	Employee get(int id);
	boolean save(Employee e);
	boolean update(Employee employee);
	boolean delete(int id);
}
