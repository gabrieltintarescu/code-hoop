package com.gabrieltintarescu.codehoopserver.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import java.util.List;

/**
 * @project CodeHoopServer
 * @author Gabriel Tintarescu
 * @created 10/3/2022
*/
@Entity
@Table(name = "courses")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty(message = "Course name cannot be empty.")
    private String name;
    @NotEmpty(message = "Course description cannot be empty.")
    private String description;
    @NotEmpty(message = "Course duration cannot be empty.")
    private String duration;
    @Min(1)
    @Max(100)
    private Integer rating;
    @ManyToMany(targetEntity = Lesson.class, cascade = CascadeType.MERGE)
    @JoinColumn(name = "lesson_fk", referencedColumnName = "id")
    private List<Lesson> lessons;
    @ManyToMany(targetEntity = Instruction.class, cascade = CascadeType.MERGE)
    @JoinColumn(name = "instruction_fk", referencedColumnName = "id")
    private List<Instruction> instructions;
}
