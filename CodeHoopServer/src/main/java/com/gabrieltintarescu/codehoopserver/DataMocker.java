package com.gabrieltintarescu.codehoopserver;

import com.gabrieltintarescu.codehoopserver.model.Course;
import com.gabrieltintarescu.codehoopserver.model.Instruction;
import com.gabrieltintarescu.codehoopserver.model.Lesson;
import com.gabrieltintarescu.codehoopserver.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import javax.management.relation.RoleStatus;
import java.util.List;

/**
 * @author Gabriel Tintarescu
 * @project CodeHoopServer
 * @created 10/3/2022
 */
@Component
public class DataMocker implements CommandLineRunner {

    private final CourseService courseService;

    @Autowired
    public DataMocker(CourseService courseService) {
        this.courseService = courseService;
    }


    @Override
    public void run(String... args) throws Exception {
        // Mocking generic instructions
        Instruction instruction = courseService.saveInstruction(Instruction.builder()
                .title("Getting started")
                .message("Start yo deepen your knowledge by watching the presented videos.")
                .build());
        Instruction instruction2 = courseService.saveInstruction(Instruction.builder()
                .title("Useful tip")
                .message("You can always pause and resume your learning process.")
                .build());

        // Mocking a java course
        Lesson javaLesson1 = courseService.saveLesson(Lesson.builder()
                .name("Control Flow Statements")
                .videoUrl("https://www.youtube.com/watch?v=0bWnwpZt67w")
                .build());
        Lesson javaLesson2 = courseService.saveLesson(Lesson.builder()
                .name("Data Structures")
                .videoUrl("https://youtu.be/8MmMm2-kJV8")
                .build());

        Course java = Course.builder()
                .name("Java Programming Masterclass")
                .description("Learn Java In This Course And Become a Computer Programmer.")
                .duration("3-5 Hours")
                .rating(100)
                .lessons(List.of(javaLesson1, javaLesson2))
                .instructions(List.of(instruction, instruction2))
                .build();

        // Mocking a JavaScript course
        Course javascript = Course.builder()
                .name("Javascript Programming Masterclass")
                .description("Learn Javascript In This Course And Become a Computer Programmer.")
                .duration("3-5 Hours")
                .rating(100)
                .lessons(List.of(javaLesson1, javaLesson2))
                .instructions(List.of(instruction, instruction2))
                .build();

        courseService.saveCourse(java);
        courseService.saveCourse(javascript);
    }
}
