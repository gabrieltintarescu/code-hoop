package com.gabrieltintarescu.codehoopserver.repository;

import com.gabrieltintarescu.codehoopserver.model.Instruction;
import com.gabrieltintarescu.codehoopserver.model.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Gabriel Tintarescu
 * @project CodeHoopServer
 * @created 10/3/2022
 */
public interface InstructionRepository extends JpaRepository<Instruction, Long> {
}
