package com.gabrieltintarescu.codehoopserver.service;

import com.gabrieltintarescu.codehoopserver.model.Course;
import com.gabrieltintarescu.codehoopserver.model.Instruction;
import com.gabrieltintarescu.codehoopserver.model.Lesson;

import java.util.List;

/**
 * @author Gabriel Tintarescu
 * @project CodeHoopServer
 * @created 10/3/2022
 */
public interface CourseService {
    List<Course> getCourses();
    Course saveCourse(Course course);

    List<Lesson> getLessons();
    Lesson saveLesson(Lesson lesson);

    List<Instruction> getInstructions();
    Instruction saveInstruction(Instruction instruction);
}
