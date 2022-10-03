package com.gabrieltintarescu.codehoopserver.controller;

import com.gabrieltintarescu.codehoopserver.model.Course;
import com.gabrieltintarescu.codehoopserver.service.CourseService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Gabriel Tintarescu
 * @project CodeHoopServer
 * @created 10/3/2022
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/courses")
public class CourseController {
    private final CourseService courseService;

    @GetMapping
    List<Course> getCourses(){
        return courseService.getCourses();
    }
}
