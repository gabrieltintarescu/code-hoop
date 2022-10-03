package com.gabrieltintarescu.codehoopserver.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

/**
 * @author Gabriel Tintarescu
 * @project CodeHoopServer
 * @created 10/3/2022
 */
@Entity
@Table(name = "instructions")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Instruction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty(message = "Instruction title cannot be empty.")
    private String title;
    @NotEmpty(message = "Instruction message cannot be empty.")
    private String message;
}
