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
                .message("Start to deepen your knowledge by watching the presented videos.")
                .build());
        Instruction instruction2 = courseService.saveInstruction(Instruction.builder()
                .title("Take your time")
                .message("You can always pause and resume your learning process.")
                .build());

        // Cybersecurity Course
        Lesson cyberSecurityLesson1 = courseService.saveLesson(Lesson.builder()
                .name("Certifications")
                .videoUrl("https://youtu.be/eO8l70pdVhY")
                .build());
        Lesson cyberSecurityLesson2 = courseService.saveLesson(Lesson.builder()
                .name("Popular Tools")
                .videoUrl("https://youtu.be/KgtevibJlTE")
                .build());
        Lesson cyberSecurityLesson3 = courseService.saveLesson(Lesson.builder()
                .name("Frameworks")
                .videoUrl("https://youtu.be/uk8-jJgu8-I")
                .build());

        Course cyberSecurity = Course.builder()
                .name("Cyber Security")
                .description("Learn the essentials of cyber security and build your skills to better protect your digital information from security threats.")
                .duration("3-5 Hours")
                .rating(80)
                .imageUrl("http://resources.gabrieltintarescu.com/codehoop/icons/security-illustration.svg")
                .lessons(List.of(cyberSecurityLesson1, cyberSecurityLesson2, cyberSecurityLesson3))
                .instructions(List.of(instruction))
                .build();

        // Java Course

        Lesson javaLesson1 = courseService.saveLesson(Lesson.builder()
                .name("Introduction")
                .videoUrl("https://youtu.be/mG4NLNZ37y4")
                .build());
        Lesson javaLesson2 = courseService.saveLesson(Lesson.builder()
                .name("Java anatomy")
                .videoUrl("https://youtu.be/vsxYucdzimA")
                .build());
        Lesson javaLesson3 = courseService.saveLesson(Lesson.builder()
                .name("Displaying messages")
                .videoUrl("https://youtu.be/ifirpBZLeCk")
                .build());
        Lesson javaLesson4 = courseService.saveLesson(Lesson.builder()
                .name("Packages and classes")
                .videoUrl("https://youtu.be/mgixJYEZ1Fk")
                .build());

        Course java = Course.builder()
                .name("Java Advanced")
                .description("Explore the fundamentals of Java-like syntax, semantics, functions & arrays. ")
                .duration("8-9 Hours")
                .rating(90)
                .imageUrl("https://resources.gabrieltintarescu.com/codehoop/icons/cloud-illustration.svg")
                .lessons(List.of(javaLesson1, javaLesson2, javaLesson3, javaLesson4))
                .instructions(List.of(instruction, instruction2))
                .build();

        // java script course
        Lesson javascriptLesson1 = courseService.saveLesson(Lesson.builder()
                .name("Environment Setting")
                .videoUrl("https://youtu.be/sEGC-adSKXo")
                .build());
        Lesson javascriptLesson2 = courseService.saveLesson(Lesson.builder()
                .name("Syntax")
                .videoUrl("https://youtu.be/KXxXr0RxGDE")
                .build());

        Lesson javascriptLesson3 = courseService.saveLesson(Lesson.builder()
                .name("Data Types")
                .videoUrl("https://youtu.be/yjE_xXL26qA")
                .build());

        Course javascript = Course.builder()
                .name("JavaScript")
                .description("Learn how to code in one of the most in-demand languages of today.")
                .duration("1-3 Hours")
                .rating(50)
                .imageUrl("https://resources.gabrieltintarescu.com/codehoop/icons/computer-illustration.svg")
                .lessons(List.of(javascriptLesson1, javascriptLesson2, javascriptLesson3))
                .instructions(List.of(instruction))
                .build();

        // Unity Game
        Lesson unityLesson1 = courseService.saveLesson(Lesson.builder()
                .name("Getting Started")
                .videoUrl("https://youtu.be/j48LtUkZRjU")
                .build());
        Lesson unityLesson2 = courseService.saveLesson(Lesson.builder()
                .name("Movement")
                .videoUrl("https://youtu.be/Au8oX5pu5u4")
                .build());

        Lesson unityLesson3 = courseService.saveLesson(Lesson.builder()
                .name("Camera Follow")
                .videoUrl("https://youtu.be/HVB6UVcb3f8")
                .build());
        Lesson unityLesson4 = courseService.saveLesson(Lesson.builder()
                .name("Collisions")
                .videoUrl("https://youtu.be/gAB64vfbrhI")
                .build());

        Course unity = Course.builder()
                .name("Unity")
                .description("Guided pathway for mastering real-time 3D development skills to make video games.")
                .duration("1-3 Hours")
                .rating(75)
                .imageUrl("https://resources.gabrieltintarescu.com/codehoop/icons/gaming-illustration.svg")
                .lessons(List.of(unityLesson1, unityLesson2, unityLesson3, unityLesson4))
                .instructions(List.of(instruction2))
                .build();

        // Data Strucutres
        Lesson dataStructLesson1 = courseService.saveLesson(Lesson.builder()
                .name("Abstract Types")
                .videoUrl("https://youtu.be/2USMAwcRWHE")
                .build());
        Lesson dataStructLesson2 = courseService.saveLesson(Lesson.builder()
                .name("Dynamic Types")
                .videoUrl("https://youtu.be/PEnFFiQe1pM")
                .build());

        Lesson dataStructLesson3 = courseService.saveLesson(Lesson.builder()
                .name("Static Types")
                .videoUrl("https://youtu.be/PEnFFiQe1pM")
                .build());

        Course dataStructures = Course.builder()
                .name("Data Structures")
                .description("Learn development lifecycle, analysis, design, development, and maintenance.")
                .duration("3-4 Hours")
                .rating(90)
                .imageUrl("https://resources.gabrieltintarescu.com/codehoop/icons/computer2-illustration.svg")
                .lessons(List.of(dataStructLesson1, dataStructLesson2, dataStructLesson3))
                .instructions(List.of(instruction, instruction2))
                .build();

        // Web Design
        Lesson webdesingLesson1 = courseService.saveLesson(Lesson.builder()
                .name("Typography")
                .videoUrl("https://youtu.be/OUp7ale49lI")
                .build());
        Lesson webdesingLesson2 = courseService.saveLesson(Lesson.builder()
                .name("Colors")
                .videoUrl("https://youtu.be/UuPt4RpV4Xc")
                .build());

        Lesson webdesingLesson3 = courseService.saveLesson(Lesson.builder()
                .name("Hierarchy")
                .videoUrl("https://youtu.be/kg76CMOO__Y")
                .build());

        Lesson webdesingLesson4 = courseService.saveLesson(Lesson.builder()
                .name("Layout")
                .videoUrl("https://youtu.be/TDRhwSfxYkg")
                .build());

        Course webdesign = Course.builder()
                .name("Web Design")
                .description("Learn development lifecycle, analysis, design, development, and maintenance.")
                .duration("3-4 Hours")
                .rating(100)
                .imageUrl("https://resources.gabrieltintarescu.com/codehoop/icons/websiteillustration.svg")
                .lessons(List.of(webdesingLesson1, webdesingLesson2, webdesingLesson3, webdesingLesson4))
                .instructions(List.of(instruction, instruction2))
                .build();


        courseService.saveCourse(cyberSecurity);
        courseService.saveCourse(java);
        courseService.saveCourse(javascript);
        courseService.saveCourse(unity);
        courseService.saveCourse(dataStructures);
        courseService.saveCourse(webdesign);
    }
}
