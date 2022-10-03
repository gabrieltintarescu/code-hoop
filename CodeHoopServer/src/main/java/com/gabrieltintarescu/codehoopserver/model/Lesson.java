package com.gabrieltintarescu.codehoopserver.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.List;

/**
 * @author Gabriel Tintarescu
 * @project CodeHoopServer
 * @created 10/3/2022
 */
@Entity
@Table(name = "lessons")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Lesson {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty(message = "Lesson name cannot be empty.")
    private String name;
    @NotEmpty(message = "Lesson url cannot be empty.")
    private String videoUrl;
}
