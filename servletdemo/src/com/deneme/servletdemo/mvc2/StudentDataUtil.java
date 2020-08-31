package com.deneme.servletdemo.mvc2;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	public static List<Student> getStudents()
	{
		List<Student> students=new ArrayList<Student>();

		students.add(new Student("mihri nur","gurun","mihrinurgrn@gmail.com"));
		students.add(new Student("ömer faruk","cavdar","ofarukcavdar@gmail.com"));
		students.add(new Student("hatice selma","cavdar","selmahaticecavdar@gmail.com"));
		students.add(new Student("neva suheyla","gurun","nevagrn@gmail.com"));
		students.add(new Student("sumeyye","gurun","sumeyyegrn@gmail.com"));
		return students;
		
	}

}
