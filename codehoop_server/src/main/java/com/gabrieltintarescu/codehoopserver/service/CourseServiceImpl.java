package com.gabrieltintarescu.codehoopserver.service;

import com.gabrieltintarescu.codehoopserver.model.Course;
import com.gabrieltintarescu.codehoopserver.model.Instruction;
import com.gabrieltintarescu.codehoopserver.model.Lesson;
import com.gabrieltintarescu.codehoopserver.repository.CourseRepository;
import com.gabrieltintarescu.codehoopserver.repository.InstructionRepository;
import com.gabrieltintarescu.codehoopserver.repository.LessonRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * @author Gabriel Tintarescu
 * @project CodeHoopServer
 * @created 10/3/2022
 */
@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class CourseServiceImpl implements CourseService {
    private final CourseRepository courseRepository;
    private final LessonRepository lessonRepository;
    private final InstructionRepository instructionRepository;

    @Override
    public List<Course> getCourses() {
        return courseRepository.findAll();
    }

    @Override
    public Course saveCourse(Course course) {
        return courseRepository.save(course);
    }

    @Override
    public List<Lesson> getLessons() {
        return lessonRepository.findAll();
    }

    @Override
    public Lesson saveLesson(Lesson lesson) {
        return lessonRepository.save(lesson);
    }

    @Override
    public List<Instruction> getInstructions() {
        return instructionRepository.findAll();
    }

    @Override
    public Instruction saveInstruction(Instruction instruction) {
        return instructionRepository.save(instruction);
    }
}
