package com.gabrieltintarescu.codehoopserver.repository;

import com.gabrieltintarescu.codehoopserver.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Gabriel Tintarescu
 * @project CodeHoopServer
 * @created 10/3/2022
 */
public interface CourseRepository extends JpaRepository<Course, Long> {
}
