package com.project.web.Repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.project.web.Model.Student;

public interface StudentInfo extends JpaRepository<Student, Integer>{
	
	
	public Student findByEmail(String email);
	
 	public List<Student> findAll(Sort sort);
 	
 	 @Query("SELECT s FROM Student s WHERE " +
             "LOWER(s.name) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
             "LOWER(s.email) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
             "s.age = :age OR " +
             "LOWER(s.gender) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
             "s.math = :math OR " +
             "s.english = :english OR " +
             "s.science = :science OR " +
             "s.history = :history OR " +
             "s.hindi = :hindi OR " +
             "s.totalMarks = :totalMarks OR " +
             "LOWER(s.percentage) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
             "LOWER(s.grade) LIKE LOWER(CONCAT('%', :keyword, '%'))")
     List<Student> searchStudentsByKeyword(@Param("keyword") String keyword,
                                           @Param("age") Integer age,
                                           @Param("math") Integer math,
                                           @Param("english") Integer english,
                                           @Param("science") Integer science,
                                           @Param("history") Integer history,
                                           @Param("hindi") Integer hindi,
                                           @Param("totalMarks") Integer totalMarks);
 	 
 	 @Query("SELECT COUNT(s) FROM Student s WHERE s.grade = 'fail'")
     long countFailedStudents();
 	 
 	 @Query("SELECT COUNT(s) FROM Student s WHERE s.grade != 'fail'")
     long countPassedStudents();
 	 
 	 @Query("SELECT SUM(percentage1) FROM Student s")
 	 Double totalPercentageSum();
	

 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'male' AND s.grade = 'A+'")
    long countMaleStudentsWithAplusGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'male' AND s.grade = 'A'")
    long countMaleStudentsWithAGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'male' AND s.grade = 'B+'")
    long countMaleStudentsWithBplusGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'male' AND s.grade = 'B'")
    long countMaleStudentsWithBGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'male' AND s.grade = 'C'")
    long countMaleStudentsWithCGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'male' AND s.grade = 'Fail'")
    long countMaleStudentsWithFail();
 	
 	
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'female' AND s.grade = 'A+'")
    long countFemaleStudentsWithAplusGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'female' AND s.grade = 'A'")
    long countFemaleStudentsWithAGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'female' AND s.grade = 'B+'")
    long countFemaleStudentsWithBplusGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'female' AND s.grade = 'B'")
    long countFemaleStudentsWithBGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'female' AND s.grade = 'C'")
    long countFemaleStudentsWithCGrade();
 	
 	@Query("SELECT COUNT(s) FROM Student s WHERE s.gender = 'female' AND s.grade = 'Fail'")
    long countFemaleStudentsWithFail();
 	
 	
}
